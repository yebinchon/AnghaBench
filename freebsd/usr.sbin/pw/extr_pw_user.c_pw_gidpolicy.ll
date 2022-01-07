; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_pw_gidpolicy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_pw_gidpolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userconf = type { i32 }
%struct.group = type { i32, i32** }

@GID_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.userconf*, i8*, i8*, i32, i32)* @pw_gidpolicy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pw_gidpolicy(%struct.userconf* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.userconf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.group*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.userconf* %0, %struct.userconf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 -1, i32* %12, align 4
  %14 = call i32 (...) @SETGRENT()
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = call %struct.group* @GETGRNAM(i8* %18)
  store %struct.group* %19, %struct.group** %11, align 8
  %20 = icmp eq %struct.group* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @GID_MAX, align 4
  %24 = call i32 @pw_checkid(i8* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call %struct.group* @GETGRGID(i32 %25)
  store %struct.group* %26, %struct.group** %11, align 8
  br label %27

27:                                               ; preds = %21, %17
  %28 = load %struct.group*, %struct.group** %11, align 8
  %29 = getelementptr inbounds %struct.group, %struct.group* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %12, align 4
  br label %86

31:                                               ; preds = %5
  %32 = load i8*, i8** %8, align 8
  %33 = call %struct.group* @GETGRNAM(i8* %32)
  store %struct.group* %33, %struct.group** %11, align 8
  %34 = icmp ne %struct.group* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load %struct.group*, %struct.group** %11, align 8
  %37 = getelementptr inbounds %struct.group, %struct.group* %36, i32 0, i32 1
  %38 = load i32**, i32*** %37, align 8
  %39 = icmp eq i32** %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load %struct.group*, %struct.group** %11, align 8
  %42 = getelementptr inbounds %struct.group, %struct.group* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %40, %35
  %48 = load %struct.group*, %struct.group** %11, align 8
  %49 = getelementptr inbounds %struct.group, %struct.group* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %12, align 4
  br label %85

51:                                               ; preds = %40, %31
  store i32 -1, i32* %13, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call %struct.group* @GETGRGID(i32 %52)
  %54 = icmp eq %struct.group* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.userconf*, %struct.userconf** %6, align 8
  %62 = call i8* @pw_groupnext(%struct.userconf* %61, i32 1)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %12, align 4
  br label %84

64:                                               ; preds = %57
  %65 = load i32, i32* %13, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.userconf*, %struct.userconf** %6, align 8
  %69 = call i8* @pw_groupnext(%struct.userconf* %68, i32 1)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %67, %64
  %72 = load %struct.userconf*, %struct.userconf** %6, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @groupadd(%struct.userconf* %72, i8* %73, i32 %74, i32* null, i32 -1, i32 0, i32 0, i32 0)
  %76 = load i8*, i8** %8, align 8
  %77 = call %struct.group* @GETGRNAM(i8* %76)
  store %struct.group* %77, %struct.group** %11, align 8
  %78 = icmp ne %struct.group* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load %struct.group*, %struct.group** %11, align 8
  %81 = getelementptr inbounds %struct.group, %struct.group* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %79, %71
  br label %84

84:                                               ; preds = %83, %60
  br label %85

85:                                               ; preds = %84, %47
  br label %86

86:                                               ; preds = %85, %27
  %87 = call i32 (...) @ENDGRENT()
  %88 = load i32, i32* %12, align 4
  ret i32 %88
}

declare dso_local i32 @SETGRENT(...) #1

declare dso_local %struct.group* @GETGRNAM(i8*) #1

declare dso_local i32 @pw_checkid(i8*, i32) #1

declare dso_local %struct.group* @GETGRGID(i32) #1

declare dso_local i8* @pw_groupnext(%struct.userconf*, i32) #1

declare dso_local i32 @groupadd(%struct.userconf*, i8*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ENDGRENT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
