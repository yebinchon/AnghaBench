; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_vfs_clearsugid.c_priv_vfs_clearsugid_extattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_vfs_clearsugid.c_priv_vfs_clearsugid_extattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32 }

@fpath = common dso_local global i32 0, align 4
@EA_NAMESPACE = common dso_local global i32 0, align 4
@EA_NAME = common dso_local global i32 0, align 4
@EA_DATA = common dso_local global i32 0, align 4
@EA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"priv_vfs_clearsugid_extattr(%s, %s): extattr_set_file\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"!root\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"jail\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"!jail\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"priv_vfs_clearsugid_extattr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @priv_vfs_clearsugid_extattr(i32 %0, i32 %1, %struct.test* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.test*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.test* %2, %struct.test** %6, align 8
  %7 = load i32, i32* @fpath, align 4
  %8 = load i32, i32* @EA_NAMESPACE, align 4
  %9 = load i32, i32* @EA_NAME, align 4
  %10 = load i32, i32* @EA_DATA, align 4
  %11 = load i32, i32* @EA_SIZE, align 4
  %12 = call i64 @extattr_set_file(i32 %7, i32 %8, i32 %9, i32 %10, i32 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %23 = call i32 @err(i32 -1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %22)
  br label %24

24:                                               ; preds = %14, %3
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @confirm_sugid(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %25, i32 %26)
  ret void
}

declare dso_local i64 @extattr_set_file(i32, i32, i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i8*, i8*) #1

declare dso_local i32 @confirm_sugid(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
