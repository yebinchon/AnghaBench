; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_state = type { i32, i32, i32, i32 }

@F_RD_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcons_state*, i8*, i64, i32)* @dwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwrite(%struct.dcons_state* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dcons_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.dcons_state* %0, %struct.dcons_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.dcons_state*, %struct.dcons_state** %6, align 8
  %11 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @F_RD_ONLY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  br label %40

19:                                               ; preds = %4
  %20 = load %struct.dcons_state*, %struct.dcons_state** %6, align 8
  %21 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %39 [
    i32 129, label %23
    i32 128, label %31
  ]

23:                                               ; preds = %19
  %24 = load %struct.dcons_state*, %struct.dcons_state** %6, align 8
  %25 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @pwrite(i32 %26, i8* %27, i64 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %40

31:                                               ; preds = %19
  %32 = load %struct.dcons_state*, %struct.dcons_state** %6, align 8
  %33 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @kvm_write(i32 %34, i32 %35, i8* %36, i64 %37)
  store i32 %38, i32* %5, align 4
  br label %40

39:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %31, %23, %16
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @pwrite(i32, i8*, i64, i32) #1

declare dso_local i32 @kvm_write(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
