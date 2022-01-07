; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_native_lapic_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_native_lapic_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@max_apic_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"APIC: Ignoring local APIC with ID %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Can't ignore BSP\00", align 1
@lapics = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"duplicate local APIC %u\00", align 1
@APIC_LVT_MAX = common dso_local global i32 0, align 4
@lvts = common dso_local global %struct.TYPE_4__* null, align 8
@APIC_ELVT_MAX = common dso_local global i32 0, align 4
@elvts = common dso_local global %struct.TYPE_6__* null, align 8
@APIC_NUM_IOINTS = common dso_local global i32 0, align 4
@IRQ_FREE = common dso_local global i32 0, align 4
@IRQ_SYSCALL = common dso_local global i32 0, align 4
@IDT_SYSCALL = common dso_local global i64 0, align 8
@APIC_IO_INTS = common dso_local global i64 0, align 8
@IRQ_TIMER = common dso_local global i32 0, align 4
@APIC_TIMER_INT = common dso_local global i64 0, align 8
@IDT_DTRACE_RET = common dso_local global i64 0, align 8
@IDT_EVTCHN = common dso_local global i64 0, align 8
@IRQ_DTRACE_RET = common dso_local global i32 0, align 4
@IRQ_EVTCHN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @native_lapic_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @native_lapic_create(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @max_apic_id, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %9
  br label %151

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lapics, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @KASSERT(i32 %26, i8* %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lapics, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lapics, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %36, i32* %41, align 4
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %72, %17
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @APIC_LVT_MAX, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %42
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lapics, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lvts, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = bitcast %struct.TYPE_4__* %55 to i8*
  %61 = bitcast %struct.TYPE_4__* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 8, i1 false)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lapics, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %46
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %42

75:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %106, %75
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @APIC_ELVT_MAX, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %109

80:                                               ; preds = %76
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lapics, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @elvts, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  %94 = bitcast %struct.TYPE_6__* %89 to i8*
  %95 = bitcast %struct.TYPE_6__* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 8, i1 false)
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lapics, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %80
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %76

109:                                              ; preds = %76
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %125, %109
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @APIC_NUM_IOINTS, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = load i32, i32* @IRQ_FREE, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lapics, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %115, i32* %124, align 4
  br label %125

125:                                              ; preds = %114
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %110

128:                                              ; preds = %110
  %129 = load i32, i32* @IRQ_SYSCALL, align 4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lapics, align 8
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* @IDT_SYSCALL, align 8
  %137 = load i64, i64* @APIC_IO_INTS, align 8
  %138 = sub i64 %136, %137
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  store i32 %129, i32* %139, align 4
  %140 = load i32, i32* @IRQ_TIMER, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lapics, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @APIC_TIMER_INT, align 8
  %148 = load i64, i64* @APIC_IO_INTS, align 8
  %149 = sub i64 %147, %148
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  store i32 %140, i32* %150, align 4
  br label %151

151:                                              ; preds = %128, %16
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
