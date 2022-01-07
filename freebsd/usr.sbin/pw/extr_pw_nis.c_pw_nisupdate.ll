; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_nis.c_pw_nisupdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_nis.c_pw_nisupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"===> %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"pw_init()\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"pw_lock()\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pw_tmp()\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"pw_copy()\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"chmod()\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"rename()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.passwd*, i8*)* @pw_nisupdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pw_nisupdate(i8* %0, %struct.passwd* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.passwd*, align 8
  %10 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.passwd* %1, %struct.passwd** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.passwd* null, %struct.passwd** %9, align 8
  store %struct.passwd* null, %struct.passwd** %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load %struct.passwd*, %struct.passwd** %5, align 8
  %14 = icmp ne %struct.passwd* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.passwd*, %struct.passwd** %5, align 8
  %17 = call %struct.passwd* @pw_dup(%struct.passwd* %16)
  store %struct.passwd* %17, %struct.passwd** %9, align 8
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = call %struct.passwd* @GETPWNAM(i8* %22)
  store %struct.passwd* %23, %struct.passwd** %10, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @pw_init(i32* null, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  %31 = call i32 (...) @pw_lock()
  store i32 %31, i32* %7, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = call i32 (...) @pw_fini()
  %35 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %30
  %37 = call i32 @pw_tmp(i32 -1)
  store i32 %37, i32* %8, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = call i32 (...) @pw_fini()
  %41 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.passwd*, %struct.passwd** %9, align 8
  %46 = load %struct.passwd*, %struct.passwd** %10, align 8
  %47 = call i32 @pw_copy(i32 %43, i32 %44, %struct.passwd* %45, %struct.passwd* %46)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = call i32 (...) @pw_fini()
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @close(i32 %51)
  %53 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %49, %42
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @fsync(i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @close(i32 %57)
  %59 = call i32 (...) @pw_tempname()
  %60 = call i32 @chmod(i32 %59, i32 420)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %54
  %65 = call i32 (...) @pw_tempname()
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @rename(i32 %65, i8* %66)
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %64
  %72 = load %struct.passwd*, %struct.passwd** %9, align 8
  %73 = call i32 @free(%struct.passwd* %72)
  %74 = call i32 (...) @pw_fini()
  ret i32 0
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local %struct.passwd* @pw_dup(%struct.passwd*) #1

declare dso_local %struct.passwd* @GETPWNAM(i8*) #1

declare dso_local i64 @pw_init(i32*, i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @pw_lock(...) #1

declare dso_local i32 @pw_fini(...) #1

declare dso_local i32 @pw_tmp(i32) #1

declare dso_local i32 @pw_copy(i32, i32, %struct.passwd*, %struct.passwd*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @chmod(i32, i32) #1

declare dso_local i32 @pw_tempname(...) #1

declare dso_local i32 @rename(i32, i8*) #1

declare dso_local i32 @free(%struct.passwd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
