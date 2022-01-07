; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_vfs_clearsugid.c_priv_vfs_clearsugid_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_vfs_clearsugid.c_priv_vfs_clearsugid_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32 }

@fpath = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"priv_vfs_clearsugid_write(%s, %s): open\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"!root\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"jail\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"!jail\00", align 1
@EA_DATA = common dso_local global i32 0, align 4
@EA_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"priv_vfs_clearsugid_write(%s, %s): write\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"priv_vfs_clearsugid_write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @priv_vfs_clearsugid_write(i32 %0, i32 %1, %struct.test* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.test*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.test* %2, %struct.test** %6, align 8
  %8 = load i32, i32* @fpath, align 4
  %9 = load i32, i32* @O_RDWR, align 4
  %10 = call i32 @open(i32 %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %22 = call i32 @err(i32 -1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %21)
  br label %23

23:                                               ; preds = %13, %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @EA_DATA, align 4
  %26 = load i32, i32* @EA_SIZE, align 4
  %27 = call i64 @write(i32 %24, i32 %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %38 = call i32 @err(i32 -1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %33, i8* %37)
  br label %39

39:                                               ; preds = %29, %23
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @close(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @confirm_sugid(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @err(i32, i8*, i8*, i8*) #1

declare dso_local i64 @write(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @confirm_sugid(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
