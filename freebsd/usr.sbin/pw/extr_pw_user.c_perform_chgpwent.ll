; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_perform_chgpwent.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_perform_chgpwent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@EX_IOERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"user '%s' does not exist (NIS?)\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"passwd file update\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"User '%s' not found in NIS passwd\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"NIS passwd update\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.passwd*, i8*)* @perform_chgpwent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perform_chgpwent(i8* %0, %struct.passwd* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.passwd* %1, %struct.passwd** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 47
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.passwd*, %struct.passwd** %5, align 8
  %18 = call %struct.passwd* @pw_dup(%struct.passwd* %17)
  store %struct.passwd* %18, %struct.passwd** %8, align 8
  br label %19

19:                                               ; preds = %16, %11, %3
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.passwd*, %struct.passwd** %5, align 8
  %22 = call i32 @chgpwent(i8* %20, %struct.passwd* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* @EX_IOERR, align 4
  %27 = load %struct.passwd*, %struct.passwd** %5, align 8
  %28 = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @errx(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %38

31:                                               ; preds = %19
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EX_IOERR, align 4
  %36 = call i32 @err(i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %25
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %65

41:                                               ; preds = %38
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 47
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.passwd*, %struct.passwd** %8, align 8
  %50 = call i32 @chgnispwent(i8* %47, i8* %48, %struct.passwd* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.passwd*, %struct.passwd** %5, align 8
  %55 = getelementptr inbounds %struct.passwd, %struct.passwd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %64

58:                                               ; preds = %46
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58
  br label %64

64:                                               ; preds = %63, %53
  br label %65

65:                                               ; preds = %64, %41, %38
  ret void
}

declare dso_local %struct.passwd* @pw_dup(%struct.passwd*) #1

declare dso_local i32 @chgpwent(i8*, %struct.passwd*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @chgnispwent(i8*, i8*, %struct.passwd*) #1

declare dso_local i32 @warn(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
