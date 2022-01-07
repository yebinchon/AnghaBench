; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_stdaccessx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_stdaccessx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_accessx_args = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vop_stdaccessx(%struct.vop_accessx_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_accessx_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.vop_accessx_args* %0, %struct.vop_accessx_args** %3, align 8
  %6 = load %struct.vop_accessx_args*, %struct.vop_accessx_args** %3, align 8
  %7 = getelementptr inbounds %struct.vop_accessx_args, %struct.vop_accessx_args* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = call i32 @vfs_unixify_accmode(i64* %5)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %30

14:                                               ; preds = %1
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %30

18:                                               ; preds = %14
  %19 = load %struct.vop_accessx_args*, %struct.vop_accessx_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_accessx_args, %struct.vop_accessx_args* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.vop_accessx_args*, %struct.vop_accessx_args** %3, align 8
  %24 = getelementptr inbounds %struct.vop_accessx_args, %struct.vop_accessx_args* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vop_accessx_args*, %struct.vop_accessx_args** %3, align 8
  %27 = getelementptr inbounds %struct.vop_accessx_args, %struct.vop_accessx_args* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @VOP_ACCESS(i32 %21, i64 %22, i32 %25, i32 %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %18, %17, %12
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @vfs_unixify_accmode(i64*) #1

declare dso_local i32 @VOP_ACCESS(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
