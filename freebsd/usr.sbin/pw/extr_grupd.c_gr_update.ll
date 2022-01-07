; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_grupd.c_gr_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_grupd.c_gr_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.group = type { i32 }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"gr_init()\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"gr_lock()\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"gr_tmp()\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"gr_copy()\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"gr_mkdb()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.group*, i8*)* @gr_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gr_update(%struct.group* %0, i8* %1) #0 {
  %3 = alloca %struct.group*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.group*, align 8
  %8 = alloca %struct.group*, align 8
  store %struct.group* %0, %struct.group** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.group* null, %struct.group** %7, align 8
  store %struct.group* null, %struct.group** %8, align 8
  %9 = load %struct.group*, %struct.group** %3, align 8
  %10 = icmp ne %struct.group* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.group*, %struct.group** %3, align 8
  %13 = call %struct.group* @gr_dup(%struct.group* %12)
  store %struct.group* %13, %struct.group** %7, align 8
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = call %struct.group* @GETGRNAM(i8* %18)
  store %struct.group* %19, %struct.group** %8, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 4
  %22 = call i64 @gr_init(i32 %21, i32* null)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  %27 = call i32 (...) @gr_lock()
  store i32 %27, i32* %5, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 (...) @gr_fini()
  %31 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %26
  %33 = call i32 @gr_tmp(i32 -1)
  store i32 %33, i32* %6, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = call i32 (...) @gr_fini()
  %37 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.group*, %struct.group** %7, align 8
  %42 = load %struct.group*, %struct.group** %8, align 8
  %43 = call i32 @gr_copy(i32 %39, i32 %40, %struct.group* %41, %struct.group* %42)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = call i32 (...) @gr_fini()
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @close(i32 %47)
  %49 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %38
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @fsync(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @close(i32 %53)
  %55 = call i32 (...) @gr_mkdb()
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = call i32 (...) @gr_fini()
  %59 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %50
  %61 = load %struct.group*, %struct.group** %7, align 8
  %62 = call i32 @free(%struct.group* %61)
  %63 = call i32 (...) @gr_fini()
  ret i32 0
}

declare dso_local %struct.group* @gr_dup(%struct.group*) #1

declare dso_local %struct.group* @GETGRNAM(i8*) #1

declare dso_local i64 @gr_init(i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @gr_lock(...) #1

declare dso_local i32 @gr_fini(...) #1

declare dso_local i32 @gr_tmp(i32) #1

declare dso_local i32 @gr_copy(i32, i32, %struct.group*, %struct.group*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @gr_mkdb(...) #1

declare dso_local i32 @free(%struct.group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
