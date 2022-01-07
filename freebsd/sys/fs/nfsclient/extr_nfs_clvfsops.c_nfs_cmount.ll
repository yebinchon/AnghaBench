; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_nfs_cmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_nfs_cmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mntarg = type { i32 }
%struct.nfs_args = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"nfs_args\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mntarg*, i8*, i32)* @nfs_cmount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_cmount(%struct.mntarg* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mntarg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs_args, align 4
  store %struct.mntarg* %0, %struct.mntarg** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @copyin(i8* %10, %struct.nfs_args* %9, i32 4)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %23

16:                                               ; preds = %3
  %17 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %18 = call %struct.mntarg* @mount_arg(%struct.mntarg* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.nfs_args* %9, i32 4)
  store %struct.mntarg* %18, %struct.mntarg** %5, align 8
  %19 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @kernel_mount(%struct.mntarg* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %16, %14
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @copyin(i8*, %struct.nfs_args*, i32) #1

declare dso_local %struct.mntarg* @mount_arg(%struct.mntarg*, i8*, %struct.nfs_args*, i32) #1

declare dso_local i32 @kernel_mount(%struct.mntarg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
