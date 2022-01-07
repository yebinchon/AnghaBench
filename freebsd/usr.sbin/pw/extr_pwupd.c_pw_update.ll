; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pwupd.c_pw_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pwupd.c_pw_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.passwd = type { i32* }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"pw_init()\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"pw_lock()\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"pw_tmp()\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"pw_copy()\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"pw_mkdb()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.passwd*, i8*)* @pw_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pw_update(%struct.passwd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.passwd* %0, %struct.passwd** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.passwd* null, %struct.passwd** %6, align 8
  store %struct.passwd* null, %struct.passwd** %7, align 8
  %11 = call i32 (...) @pwdb_check()
  store i32 %11, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %80

15:                                               ; preds = %2
  %16 = load %struct.passwd*, %struct.passwd** %4, align 8
  %17 = icmp ne %struct.passwd* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.passwd*, %struct.passwd** %4, align 8
  %20 = call %struct.passwd* @pw_dup(%struct.passwd* %19)
  store %struct.passwd* %20, %struct.passwd** %6, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  %26 = call %struct.passwd* @GETPWNAM(i8* %25)
  store %struct.passwd* %26, %struct.passwd** %7, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 4
  %29 = call i64 @pw_init(i32 %28, i32* null)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  %34 = call i32 (...) @pw_lock()
  store i32 %34, i32* %9, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = call i32 (...) @pw_fini()
  %38 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33
  %40 = call i32 @pw_tmp(i32 -1)
  store i32 %40, i32* %10, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = call i32 (...) @pw_fini()
  %44 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.passwd*, %struct.passwd** %6, align 8
  %49 = load %struct.passwd*, %struct.passwd** %7, align 8
  %50 = call i32 @pw_copy(i32 %46, i32 %47, %struct.passwd* %48, %struct.passwd* %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = call i32 (...) @pw_fini()
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @close(i32 %54)
  %56 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %45
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @fsync(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @close(i32 %60)
  %62 = load %struct.passwd*, %struct.passwd** %6, align 8
  %63 = icmp ne %struct.passwd* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.passwd*, %struct.passwd** %6, align 8
  %66 = getelementptr inbounds %struct.passwd, %struct.passwd* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  br label %69

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %64
  %70 = phi i32* [ %67, %64 ], [ null, %68 ]
  %71 = call i32 @pw_mkdb(i32* %70)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = call i32 (...) @pw_fini()
  %75 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %69
  %77 = load %struct.passwd*, %struct.passwd** %6, align 8
  %78 = call i32 @free(%struct.passwd* %77)
  %79 = call i32 (...) @pw_fini()
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %13
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @pwdb_check(...) #1

declare dso_local %struct.passwd* @pw_dup(%struct.passwd*) #1

declare dso_local %struct.passwd* @GETPWNAM(i8*) #1

declare dso_local i64 @pw_init(i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @pw_lock(...) #1

declare dso_local i32 @pw_fini(...) #1

declare dso_local i32 @pw_tmp(i32) #1

declare dso_local i32 @pw_copy(i32, i32, %struct.passwd*, %struct.passwd*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @pw_mkdb(i32*) #1

declare dso_local i32 @free(%struct.passwd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
