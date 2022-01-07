; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_machdep.c_linux_set_cloned_tls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_machdep.c_linux_set_cloned_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.segment_descriptor }
%struct.segment_descriptor = type { i32 }
%struct.l_user_desc = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"set_cloned_tls copyin failed!\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"set_cloned_tls resetting idx!\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"set_cloned_tls copyout failed!\00", align 1
@GUGS_SEL = common dso_local global i32 0, align 4
@SEL_UPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_set_cloned_tls(%struct.thread* %0, i8* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.segment_descriptor, align 4
  %6 = alloca %struct.l_user_desc, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @copyin(i8* %10, %struct.l_user_desc* %6, i32 4)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.thread*, %struct.thread** %3, align 8
  %16 = call i32 @linux_msg(%struct.thread* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %61

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.l_user_desc, %struct.l_user_desc* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 6
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.thread*, %struct.thread** %3, align 8
  %27 = call i32 @linux_msg(%struct.thread* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 3, i32* %7, align 4
  br label %28

28:                                               ; preds = %25, %22, %17
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 6
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.l_user_desc, %struct.l_user_desc* %6, i32 0, i32 0
  store i32 3, i32* %32, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @copyout(%struct.l_user_desc* %6, i8* %33, i32 4)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.thread*, %struct.thread** %3, align 8
  %39 = call i32 @linux_msg(%struct.thread* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %31
  br label %41

41:                                               ; preds = %40, %28
  %42 = call i32 @LINUX_LDT_entry_a(%struct.l_user_desc* %6)
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %42, i32* %43, align 4
  %44 = call i32 @LINUX_LDT_entry_b(%struct.l_user_desc* %6)
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = bitcast [2 x i32]* %9 to i32**
  %47 = call i32 @memcpy(%struct.segment_descriptor* %5, i32** %46, i32 8)
  %48 = load %struct.thread*, %struct.thread** %3, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = bitcast %struct.segment_descriptor* %51 to i8*
  %53 = bitcast %struct.segment_descriptor* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load i32, i32* @GUGS_SEL, align 4
  %55 = load i32, i32* @SEL_UPL, align 4
  %56 = call i32 @GSEL(i32 %54, i32 %55)
  %57 = load %struct.thread*, %struct.thread** %3, align 8
  %58 = getelementptr inbounds %struct.thread, %struct.thread* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %41, %14
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @copyin(i8*, %struct.l_user_desc*, i32) #1

declare dso_local i32 @linux_msg(%struct.thread*, i8*) #1

declare dso_local i32 @copyout(%struct.l_user_desc*, i8*, i32) #1

declare dso_local i32 @LINUX_LDT_entry_a(%struct.l_user_desc*) #1

declare dso_local i32 @LINUX_LDT_entry_b(%struct.l_user_desc*) #1

declare dso_local i32 @memcpy(%struct.segment_descriptor*, i32**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GSEL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
