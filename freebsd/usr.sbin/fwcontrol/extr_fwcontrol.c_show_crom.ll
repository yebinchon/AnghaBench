; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fwcontrol/extr_fwcontrol.c_show_crom.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fwcontrol/extr_fwcontrol.c_show_crom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crom_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.csrdirectory* }
%struct.csrdirectory = type { i32, i32, i32* }
%struct.csrreg = type { i32, i32 }
%struct.csrhdr = type { i32, i32, i32 }

@show_crom.key_types = internal global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [5 x i8] c"ICLD\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"first quad: 0x%08x \00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"(Invalid Configuration ROM)\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"verndor ID: 0x%06x\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"info_len=%d crc_len=%d crc=0x%04x\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"(OK)\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"(NG)\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"no root directory - giving up\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"root_directory: len=0x%04x(%d) crc=0x%04x\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"%02x(%c:%02x) %06x %s: %s\0A\00", align 1
@CSRTYPE_MASK = common dso_local global i32 0, align 4
@CSRKEY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @show_crom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_crom(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.crom_context, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca %struct.csrreg*, align 8
  %8 = alloca %struct.csrdirectory*, align 8
  %9 = alloca %struct.csrhdr*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %157

20:                                               ; preds = %1
  %21 = load i32*, i32** %2, align 8
  %22 = bitcast i32* %21 to %struct.csrhdr*
  store %struct.csrhdr* %22, %struct.csrhdr** %9, align 8
  %23 = load %struct.csrhdr*, %struct.csrhdr** %9, align 8
  %24 = getelementptr inbounds %struct.csrhdr, %struct.csrhdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.csrhdr*, %struct.csrhdr** %9, align 8
  %29 = bitcast %struct.csrhdr* %28 to %struct.csrreg*
  store %struct.csrreg* %29, %struct.csrreg** %7, align 8
  %30 = load %struct.csrreg*, %struct.csrreg** %7, align 8
  %31 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  br label %157

34:                                               ; preds = %20
  %35 = load %struct.csrhdr*, %struct.csrhdr** %9, align 8
  %36 = getelementptr inbounds %struct.csrhdr, %struct.csrhdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.csrhdr*, %struct.csrhdr** %9, align 8
  %39 = getelementptr inbounds %struct.csrhdr, %struct.csrhdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.csrhdr*, %struct.csrhdr** %9, align 8
  %42 = getelementptr inbounds %struct.csrhdr, %struct.csrhdr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %37, i32 %40, i32 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load %struct.csrhdr*, %struct.csrhdr** %9, align 8
  %48 = getelementptr inbounds %struct.csrhdr, %struct.csrhdr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @crom_crc(i32* %46, i32 %49)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.csrhdr*, %struct.csrhdr** %9, align 8
  %53 = getelementptr inbounds %struct.csrhdr, %struct.csrhdr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp eq i64 %51, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %34
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %61

59:                                               ; preds = %34
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %57
  %62 = load i32*, i32** %2, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = call i32 @parse_bus_info_block(i32* %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @crom_init_context(%struct.crom_context* %4, i32* %65)
  %67 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %4, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.csrdirectory*, %struct.csrdirectory** %70, align 8
  store %struct.csrdirectory* %71, %struct.csrdirectory** %8, align 8
  %72 = load %struct.csrdirectory*, %struct.csrdirectory** %8, align 8
  %73 = icmp ne %struct.csrdirectory* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %61
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %157

76:                                               ; preds = %61
  %77 = load %struct.csrdirectory*, %struct.csrdirectory** %8, align 8
  %78 = getelementptr inbounds %struct.csrdirectory, %struct.csrdirectory* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.csrdirectory*, %struct.csrdirectory** %8, align 8
  %81 = getelementptr inbounds %struct.csrdirectory, %struct.csrdirectory* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.csrdirectory*, %struct.csrdirectory** %8, align 8
  %84 = getelementptr inbounds %struct.csrdirectory, %struct.csrdirectory* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %79, i32 %82, i32 %85)
  %87 = load %struct.csrdirectory*, %struct.csrdirectory** %8, align 8
  %88 = getelementptr inbounds %struct.csrdirectory, %struct.csrdirectory* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load %struct.csrdirectory*, %struct.csrdirectory** %8, align 8
  %92 = getelementptr inbounds %struct.csrdirectory, %struct.csrdirectory* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @crom_crc(i32* %90, i32 %93)
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load %struct.csrdirectory*, %struct.csrdirectory** %8, align 8
  %97 = getelementptr inbounds %struct.csrdirectory, %struct.csrdirectory* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp eq i64 %95, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %76
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %105

103:                                              ; preds = %76
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %101
  %106 = load %struct.csrdirectory*, %struct.csrdirectory** %8, align 8
  %107 = getelementptr inbounds %struct.csrdirectory, %struct.csrdirectory* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %108, 1
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %157

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %130, %111
  %113 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %4, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %157

116:                                              ; preds = %112
  %117 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %118 = call i8* @crom_desc(%struct.crom_context* %4, i8* %117, i32 256)
  store i8* %118, i8** %5, align 8
  %119 = call %struct.csrreg* @crom_get(%struct.crom_context* %4)
  store %struct.csrreg* %119, %struct.csrreg** %7, align 8
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %127, %116
  %121 = load i32, i32* %3, align 4
  %122 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %4, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %3, align 4
  br label %120

130:                                              ; preds = %120
  %131 = load %struct.csrreg*, %struct.csrreg** %7, align 8
  %132 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i8*, i8** @show_crom.key_types, align 8
  %135 = load %struct.csrreg*, %struct.csrreg** %7, align 8
  %136 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @CSRTYPE_MASK, align 4
  %139 = and i32 %137, %138
  %140 = ashr i32 %139, 6
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %134, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = load %struct.csrreg*, %struct.csrreg** %7, align 8
  %146 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @CSRKEY_MASK, align 4
  %149 = and i32 %147, %148
  %150 = load %struct.csrreg*, %struct.csrreg** %7, align 8
  %151 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** %5, align 8
  %154 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %133, i32 %144, i32 %149, i32 %152, i8* %153, i8* %154)
  %156 = call i32 @crom_next(%struct.crom_context* %4)
  br label %112

157:                                              ; preds = %18, %27, %74, %110, %112
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @crom_crc(i32*, i32) #1

declare dso_local i32 @parse_bus_info_block(i32*) #1

declare dso_local i32 @crom_init_context(%struct.crom_context*, i32*) #1

declare dso_local i8* @crom_desc(%struct.crom_context*, i8*, i32) #1

declare dso_local %struct.csrreg* @crom_get(%struct.crom_context*) #1

declare dso_local i32 @crom_next(%struct.crom_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
