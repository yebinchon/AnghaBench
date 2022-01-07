; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_parse_mount_dev_present.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_parse_mount_dev_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32 }

@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_mount_dev_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mount_dev_present(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nameidata, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @LOOKUP, align 4
  %6 = load i32, i32* @FOLLOW, align 4
  %7 = load i32, i32* @LOCKLEAF, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @UIO_SYSSPACE, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = load i32, i32* @curthread, align 4
  %12 = call i32 @NDINIT(%struct.nameidata* %3, i32 %5, i32 %8, i32 %9, i8* %10, i32 %11)
  %13 = call i32 @namei(%struct.nameidata* %3)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %3, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vput(i32 %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %22 = call i32 @NDFREE(%struct.nameidata* %3, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  ret i32 %26
}

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @vput(i32) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
