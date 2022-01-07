; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_xform_ah.c_xform_ah_authsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_xform_ah.c_xform_ah_authsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_hash = type { i32, i32 }

@AH_HMAC_HASHLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xform_ah_authsize(%struct.auth_hash* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.auth_hash*, align 8
  %4 = alloca i32, align 4
  store %struct.auth_hash* %0, %struct.auth_hash** %3, align 8
  %5 = load %struct.auth_hash*, %struct.auth_hash** %3, align 8
  %6 = icmp eq %struct.auth_hash* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

8:                                                ; preds = %1
  %9 = load %struct.auth_hash*, %struct.auth_hash** %3, align 8
  %10 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %21 [
    i32 130, label %12
    i32 129, label %12
    i32 128, label %12
    i32 133, label %17
    i32 132, label %17
    i32 131, label %17
  ]

12:                                               ; preds = %8, %8, %8
  %13 = load %struct.auth_hash*, %struct.auth_hash** %3, align 8
  %14 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* %4, align 4
  br label %23

17:                                               ; preds = %8, %8, %8
  %18 = load %struct.auth_hash*, %struct.auth_hash** %3, align 8
  %19 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  br label %23

21:                                               ; preds = %8
  %22 = load i32, i32* @AH_HMAC_HASHLEN, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %17, %12
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %7
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
