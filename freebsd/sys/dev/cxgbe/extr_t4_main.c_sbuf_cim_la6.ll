; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_sbuf_cim_la6.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_sbuf_cim_la6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Status   Inst    Data      PC%s\00", align 1
@F_UPDBGLACAPTPCONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"     LS0Stat  LS0Addr  LS0Data  LS1Stat  LS1Addr  LS1Data\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\0A  %02x   %08x %08x %08x\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\0A  %02x   %02x%06x %02x%06x %02x%06x\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"\0A  %02x   %04x%04x %04x%04x %04x%04x\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"\0A  %02x   %04x%04x %04x%04x %04x%04x %08x %08x %08x %08x %08x %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sbuf*, i32*, i32)* @sbuf_cim_la6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbuf_cim_la6(%struct.adapter* %0, %struct.sbuf* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sbuf* %1, %struct.sbuf** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @F_UPDBGLACAPTPCONLY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32*, i32** %7, align 8
  store i32* %18, i32** %9, align 8
  br label %19

19:                                               ; preds = %164, %4
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.adapter*, %struct.adapter** %5, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 10
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %21, i64 %27
  %29 = icmp ule i32* %20, %28
  br i1 %29, label %30, label %167

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @F_UPDBGLACAPTPCONLY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %113

35:                                               ; preds = %30
  %36 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 255
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32 %43, i32 %46, i32 %49)
  %51 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 6
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 8
  %56 = and i32 %55, 255
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 6
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 255
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 5
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 8
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 255
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 8
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 255
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 8
  %81 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %56, i32 %60, i32 %64, i32 %68, i32 %72, i32 %76, i32 %80)
  %82 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 9
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 16
  %87 = and i32 %86, 255
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 9
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 65535
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 8
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 16
  %96 = load i32*, i32** %9, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 65535
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 7
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 16
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 7
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 65535
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 6
  %110 = load i32, i32* %109, align 4
  %111 = ashr i32 %110, 16
  %112 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %87, i32 %91, i32 %95, i32 %99, i32 %103, i32 %107, i32 %111)
  br label %163

113:                                              ; preds = %30
  %114 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 9
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %117, 16
  %119 = and i32 %118, 255
  %120 = load i32*, i32** %9, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 9
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 65535
  %124 = load i32*, i32** %9, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 8
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 16
  %128 = load i32*, i32** %9, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 8
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 65535
  %132 = load i32*, i32** %9, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 7
  %134 = load i32, i32* %133, align 4
  %135 = ashr i32 %134, 16
  %136 = load i32*, i32** %9, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 7
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 65535
  %140 = load i32*, i32** %9, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 6
  %142 = load i32, i32* %141, align 4
  %143 = ashr i32 %142, 16
  %144 = load i32*, i32** %9, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %9, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 5
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %9, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 4
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %9, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %114, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 %119, i32 %123, i32 %127, i32 %131, i32 %135, i32 %139, i32 %143, i32 %146, i32 %149, i32 %152, i32 %155, i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %113, %35
  br label %164

164:                                              ; preds = %163
  %165 = load i32*, i32** %9, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 10
  store i32* %166, i32** %9, align 8
  br label %19

167:                                              ; preds = %19
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
