; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_sys_kmq_unlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_sys_kmq_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.thread = type { i32 }
%struct.kmq_unlink_args = type { i32 }
%struct.mqfs_node = type { i32 }

@MQFS_NAMELEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"/..\00", align 1
@mqfs_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_kmq_unlink(%struct.thread* %0, %struct.kmq_unlink_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.kmq_unlink_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mqfs_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.kmq_unlink_args* %1, %struct.kmq_unlink_args** %5, align 8
  %12 = load i32, i32* @MQFS_NAMELEN, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.kmq_unlink_args*, %struct.kmq_unlink_args** %5, align 8
  %18 = getelementptr inbounds %struct.kmq_unlink_args, %struct.kmq_unlink_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MQFS_NAMELEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 @copyinstr(i32 %19, i8* %16, i32 %21, i32* null)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %74

27:                                               ; preds = %2
  %28 = call i32 @strlen(i8* %16)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, i8* %16, i64 0
  %33 = load i8, i8* %32, align 16
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 47
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, i8* %16, i64 1
  %38 = call i32* @strchr(i8* %37, i8 signext 47)
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %31, %27
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %74

42:                                               ; preds = %36
  %43 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %74

50:                                               ; preds = %45
  %51 = call i32 @AUDIT_ARG_UPATH1_CANON(i8* %16)
  %52 = call i32 @sx_xlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mqfs_data, i32 0, i32 0))
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mqfs_data, i32 0, i32 1), align 4
  %54 = getelementptr inbounds i8, i8* %16, i64 1
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.thread*, %struct.thread** %4, align 8
  %58 = getelementptr inbounds %struct.thread, %struct.thread* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.mqfs_node* @mqfs_search(i32 %53, i8* %54, i32 %56, i32 %59)
  store %struct.mqfs_node* %60, %struct.mqfs_node** %8, align 8
  %61 = load %struct.mqfs_node*, %struct.mqfs_node** %8, align 8
  %62 = icmp ne %struct.mqfs_node* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %50
  %64 = load %struct.mqfs_node*, %struct.mqfs_node** %8, align 8
  %65 = load %struct.thread*, %struct.thread** %4, align 8
  %66 = getelementptr inbounds %struct.thread, %struct.thread* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @do_unlink(%struct.mqfs_node* %64, i32 %67)
  store i32 %68, i32* %9, align 4
  br label %71

69:                                               ; preds = %50
  %70 = load i32, i32* @ENOENT, align 4
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %69, %63
  %72 = call i32 @sx_xunlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mqfs_data, i32 0, i32 0))
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %74

74:                                               ; preds = %71, %48, %40, %25
  %75 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @copyinstr(i32, i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @AUDIT_ARG_UPATH1_CANON(i8*) #2

declare dso_local i32 @sx_xlock(i32*) #2

declare dso_local %struct.mqfs_node* @mqfs_search(i32, i8*, i32, i32) #2

declare dso_local i32 @do_unlink(%struct.mqfs_node*, i32) #2

declare dso_local i32 @sx_xunlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
