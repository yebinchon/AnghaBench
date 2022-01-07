; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_mount_argb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_mount_argb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mntarg = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"mount_argb(...,%s): name must start with 'no'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mntarg* @mount_argb(%struct.mntarg* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mntarg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.mntarg* %0, %struct.mntarg** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 110
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 111
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i1 [ false, %3 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @KASSERT(i32 %20, i8* %21)
  %23 = load %struct.mntarg*, %struct.mntarg** %4, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 2, i32 0
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %24, i64 %29
  %31 = call %struct.mntarg* @mount_arg(%struct.mntarg* %23, i8* %30, i32* null, i32 0)
  ret %struct.mntarg* %31
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.mntarg* @mount_arg(%struct.mntarg*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
