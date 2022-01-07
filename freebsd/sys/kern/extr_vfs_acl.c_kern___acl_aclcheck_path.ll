; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_acl.c_kern___acl_aclcheck_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_acl.c_kern___acl_aclcheck_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.acl = type { i32 }
%struct.nameidata = type { i32 }

@LOOKUP = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*, i32, %struct.acl*, i32)* @kern___acl_aclcheck_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern___acl_aclcheck_path(%struct.thread* %0, i8* %1, i32 %2, %struct.acl* %3, i32 %4) #0 {
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.acl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nameidata, align 4
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.acl* %3, %struct.acl** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @LOOKUP, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @UIO_USERSPACE, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.thread*, %struct.thread** %6, align 8
  %18 = call i32 @NDINIT(%struct.nameidata* %11, i32 %13, i32 %14, i32 %15, i8* %16, %struct.thread* %17)
  %19 = call i32 @namei(%struct.nameidata* %11)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load %struct.thread*, %struct.thread** %6, align 8
  %24 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %11, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.acl*, %struct.acl** %9, align 8
  %28 = call i32 @vacl_aclcheck(%struct.thread* %23, i32 %25, i32 %26, %struct.acl* %27)
  store i32 %28, i32* %12, align 4
  %29 = call i32 @NDFREE(%struct.nameidata* %11, i32 0)
  br label %30

30:                                               ; preds = %22, %5
  %31 = load i32, i32* %12, align 4
  ret i32 %31
}

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @vacl_aclcheck(%struct.thread*, i32, i32, %struct.acl*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
