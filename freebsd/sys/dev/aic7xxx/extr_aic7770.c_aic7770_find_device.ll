; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7770.c_aic7770_find_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7770.c_aic7770_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7770_identity = type { i32, i32 }

@ahc_num_aic7770_devs = common dso_local global i32 0, align 4
@aic7770_ident_table = common dso_local global %struct.aic7770_identity* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aic7770_identity* @aic7770_find_device(i32 %0) #0 {
  %2 = alloca %struct.aic7770_identity*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.aic7770_identity*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @ahc_num_aic7770_devs, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.aic7770_identity*, %struct.aic7770_identity** @aic7770_ident_table, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.aic7770_identity, %struct.aic7770_identity* %11, i64 %13
  store %struct.aic7770_identity* %14, %struct.aic7770_identity** %4, align 8
  %15 = load %struct.aic7770_identity*, %struct.aic7770_identity** %4, align 8
  %16 = getelementptr inbounds %struct.aic7770_identity, %struct.aic7770_identity* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.aic7770_identity*, %struct.aic7770_identity** %4, align 8
  %20 = getelementptr inbounds %struct.aic7770_identity, %struct.aic7770_identity* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %10
  %25 = load %struct.aic7770_identity*, %struct.aic7770_identity** %4, align 8
  store %struct.aic7770_identity* %25, %struct.aic7770_identity** %2, align 8
  br label %31

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %6

30:                                               ; preds = %6
  store %struct.aic7770_identity* null, %struct.aic7770_identity** %2, align 8
  br label %31

31:                                               ; preds = %30, %24
  %32 = load %struct.aic7770_identity*, %struct.aic7770_identity** %2, align 8
  ret %struct.aic7770_identity* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
