; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_attrnamespace_to_linux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_attrnamespace_to_linux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POSIX1E_ACL_DEFAULT_EXTATTR_NAMESPACE = common dso_local global i32 0, align 4
@POSIX1E_ACL_DEFAULT_EXTATTR_NAME = common dso_local global i32 0, align 4
@EXT4_XATTR_INDEX_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@POSIX1E_ACL_ACCESS_EXTATTR_NAMESPACE = common dso_local global i32 0, align 4
@POSIX1E_ACL_ACCESS_EXTATTR_NAME = common dso_local global i32 0, align 4
@EXT4_XATTR_INDEX_POSIX_ACL_ACCESS = common dso_local global i32 0, align 4
@EXT4_XATTR_INDEX_SYSTEM = common dso_local global i32 0, align 4
@EXT4_XATTR_INDEX_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ext2_extattr_attrnamespace_to_linux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_extattr_attrnamespace_to_linux(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @POSIX1E_ACL_DEFAULT_EXTATTR_NAMESPACE, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @POSIX1E_ACL_DEFAULT_EXTATTR_NAME, align 4
  %12 = call i32 @strcmp(i8* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @EXT4_XATTR_INDEX_POSIX_ACL_DEFAULT, align 4
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %9, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @POSIX1E_ACL_ACCESS_EXTATTR_NAMESPACE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @POSIX1E_ACL_ACCESS_EXTATTR_NAME, align 4
  %23 = call i32 @strcmp(i8* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EXT4_XATTR_INDEX_POSIX_ACL_ACCESS, align 4
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %20, %16
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %33 [
    i32 129, label %29
    i32 128, label %31
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @EXT4_XATTR_INDEX_SYSTEM, align 4
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EXT4_XATTR_INDEX_USER, align 4
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %31, %29, %25, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
