; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_sbuf_cim_la4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_sbuf_cim_la4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Status   Data      PC%s\00", align 1
@F_UPDBGLACAPTPCONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"     LS0Stat  LS0Addr             LS0Data\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"\0A  %02x   %08x %08x\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"\0A  %02x   %02x%06x %02x%06x\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"\0A  %02x   %x%07x %x%07x\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"\0A  %02x   %x%07x %x%07x %08x %08x %08x%08x%08x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sbuf*, i32*, i32)* @sbuf_cim_la4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbuf_cim_la4(%struct.adapter* %0, %struct.sbuf* %1, i32* %2, i32 %3) #0 {
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
  %16 = select i1 %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32*, i32** %7, align 8
  store i32* %18, i32** %9, align 8
  br label %19

19:                                               ; preds = %138, %4
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.adapter*, %struct.adapter** %5, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %21, i64 %27
  %29 = icmp ule i32* %20, %28
  br i1 %29, label %30, label %141

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @F_UPDBGLACAPTPCONLY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %94

35:                                               ; preds = %30
  %36 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 5
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 255
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 6
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 7
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32 %43, i32 %46)
  %48 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 255
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 255
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 8
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 255
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 8
  %70 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %53, i32 %57, i32 %61, i32 %65, i32 %69)
  %71 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 4
  %76 = and i32 %75, 255
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 15
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 4
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 15
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 4
  %93 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %76, i32 %80, i32 %84, i32 %88, i32 %92)
  br label %137

94:                                               ; preds = %30
  %95 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 4
  %100 = and i32 %99, 255
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 15
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 4
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 15
  %113 = load i32*, i32** %9, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 4
  %117 = load i32*, i32** %9, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 15
  %121 = load i32*, i32** %9, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %9, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 4
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %9, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 5
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %9, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 6
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 7
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %95, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %100, i32 %104, i32 %108, i32 %112, i32 %116, i32 %120, i32 %123, i32 %126, i32 %129, i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %94, %35
  br label %138

138:                                              ; preds = %137
  %139 = load i32*, i32** %9, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 8
  store i32* %140, i32** %9, align 8
  br label %19

141:                                              ; preds = %19
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
