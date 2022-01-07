; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user = type { i8*, i32 }
%struct.passwd = type { i32 }

@users = common dso_local global %struct.user* null, align 8
@nusers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"#%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"allocate users\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.user* (i32)* @user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.user* @user(i32 %0) #0 {
  %2 = alloca %struct.user*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.user*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.passwd*, align 8
  store i32 %0, i32* %3, align 4
  br label %7

7:                                                ; preds = %1, %96
  %8 = load %struct.user*, %struct.user** @users, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @nusers, align 4
  %11 = sub nsw i32 %10, 1
  %12 = and i32 %9, %11
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.user, %struct.user* %8, i64 %13
  store %struct.user* %14, %struct.user** %4, align 8
  %15 = load i32, i32* @nusers, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %93, %7
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %5, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %96

20:                                               ; preds = %16
  %21 = load %struct.user*, %struct.user** %4, align 8
  %22 = getelementptr inbounds %struct.user, %struct.user* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %74, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.user*, %struct.user** %4, align 8
  %28 = getelementptr inbounds %struct.user, %struct.user* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call %struct.passwd* @getpwuid(i32 %29)
  store %struct.passwd* %30, %struct.passwd** %6, align 8
  %31 = icmp ne %struct.passwd* %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %25
  %33 = call i64 @malloc(i32 7)
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.user*, %struct.user** %4, align 8
  %36 = getelementptr inbounds %struct.user, %struct.user* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = icmp ne i8* %34, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.user*, %struct.user** %4, align 8
  %40 = getelementptr inbounds %struct.user, %struct.user* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %32
  br label %65

45:                                               ; preds = %25
  %46 = load %struct.passwd*, %struct.passwd** %6, align 8
  %47 = getelementptr inbounds %struct.passwd, %struct.passwd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strlen(i32 %48)
  %50 = add nsw i32 %49, 1
  %51 = call i64 @malloc(i32 %50)
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.user*, %struct.user** %4, align 8
  %54 = getelementptr inbounds %struct.user, %struct.user* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = icmp ne i8* %52, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %45
  %57 = load %struct.user*, %struct.user** %4, align 8
  %58 = getelementptr inbounds %struct.user, %struct.user* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.passwd*, %struct.passwd** %6, align 8
  %61 = getelementptr inbounds %struct.passwd, %struct.passwd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @strcpy(i8* %59, i32 %62)
  br label %64

64:                                               ; preds = %56, %45
  br label %65

65:                                               ; preds = %64, %44
  %66 = load %struct.user*, %struct.user** %4, align 8
  %67 = getelementptr inbounds %struct.user, %struct.user* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %65
  %73 = load %struct.user*, %struct.user** %4, align 8
  store %struct.user* %73, %struct.user** %2, align 8
  br label %98

74:                                               ; preds = %20
  %75 = load %struct.user*, %struct.user** %4, align 8
  %76 = getelementptr inbounds %struct.user, %struct.user* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load %struct.user*, %struct.user** %4, align 8
  store %struct.user* %81, %struct.user** %2, align 8
  br label %98

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.user*, %struct.user** %4, align 8
  %85 = load %struct.user*, %struct.user** @users, align 8
  %86 = icmp ule %struct.user* %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.user*, %struct.user** @users, align 8
  %89 = load i32, i32* @nusers, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.user, %struct.user* %88, i64 %90
  store %struct.user* %91, %struct.user** %4, align 8
  br label %92

92:                                               ; preds = %87, %83
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.user*, %struct.user** %4, align 8
  %95 = getelementptr inbounds %struct.user, %struct.user* %94, i32 -1
  store %struct.user* %95, %struct.user** %4, align 8
  br label %16

96:                                               ; preds = %16
  %97 = call i32 (...) @usrrehash()
  br label %7

98:                                               ; preds = %80, %72
  %99 = load %struct.user*, %struct.user** %2, align 8
  ret %struct.user* %99
}

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @usrrehash(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
