; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_get_mic.c_gss_get_mic_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_get_mic.c_gss_get_mic_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }

@GSS_S_NO_CONTEXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_get_mic_mbuf(i64* %0, i32 %1, i32 %2, %struct.mbuf* %3, %struct.mbuf** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf**, align 8
  store i64* %0, i64** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.mbuf* %3, %struct.mbuf** %10, align 8
  store %struct.mbuf** %4, %struct.mbuf*** %11, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load i64*, i64** %7, align 8
  store i64 0, i64* %15, align 8
  %16 = load i64, i64* @GSS_S_NO_CONTEXT, align 8
  store i64 %16, i64* %6, align 8
  br label %24

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = load i64*, i64** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %22 = load %struct.mbuf**, %struct.mbuf*** %11, align 8
  %23 = call i64 @KGSS_GET_MIC(i32 %18, i64* %19, i32 %20, %struct.mbuf* %21, %struct.mbuf** %22)
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %17, %14
  %25 = load i64, i64* %6, align 8
  ret i64 %25
}

declare dso_local i64 @KGSS_GET_MIC(i32, i64*, i32, %struct.mbuf*, %struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
