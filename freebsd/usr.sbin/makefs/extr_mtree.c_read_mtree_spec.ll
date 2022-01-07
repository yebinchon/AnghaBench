; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_mtree.c_read_mtree_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_mtree.c_read_mtree_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@mtree_root = common dso_local global i32 0, align 4
@mtree_current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"absolute path cannot contain .. component\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"absolute path cannot contain . or .. components\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @read_mtree_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mtree_spec(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @PATH_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = mul nsw i32 4, %12
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = trunc i64 %15 to i32
  %19 = call i32 @read_word(i32* %17, i8* %16, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %92

23:                                               ; preds = %1
  %24 = load i32, i32* @PATH_MAX, align 4
  %25 = call i32 @strnunvis(i8* %11, i32 %24, i8* %16)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @errno, align 4
  store i32 %28, i32* %7, align 4
  br label %92

29:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  %30 = call i8* @strchr(i8* %11, i8 signext 47)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %80

33:                                               ; preds = %29
  %34 = load i32, i32* @mtree_root, align 4
  store i32 %34, i32* @mtree_current, align 4
  br label %35

35:                                               ; preds = %66, %33
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  store i8 0, i8* %36, align 1
  %38 = call i64 @IS_DOTDOT(i8* %11)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @mtree_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %92

42:                                               ; preds = %35
  %43 = getelementptr inbounds i8, i8* %11, i64 0
  %44 = load i8, i8* %43, align 16
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = call i64 @IS_DOT(i8* %11)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @read_mtree_spec1(i32* %51, i32 0, i8* %11)
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %50, %47, %42
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @strlen(i8* %55)
  %57 = add nsw i64 %56, 1
  %58 = call i32 @memmove(i8* %11, i8* %54, i64 %57)
  %59 = call i8* @strchr(i8* %11, i8 signext 47)
  store i8* %59, i8** %6, align 8
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %6, align 8
  %65 = icmp ne i8* %64, null
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi i1 [ false, %60 ], [ %65, %63 ]
  br i1 %67, label %35, label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = call i64 @IS_DOT(i8* %11)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = call i64 @IS_DOTDOT(i8* %11)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74, %71
  %78 = call i32 @mtree_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %92

79:                                               ; preds = %74, %68
  br label %80

80:                                               ; preds = %79, %29
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds i8, i8* %11, i64 0
  %85 = load i8, i8* %84, align 16
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @read_mtree_spec1(i32* %89, i32 1, i8* %11)
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %88, %83, %80
  br label %92

92:                                               ; preds = %91, %77, %40, %27, %22
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @skip_to(i32* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 @getc(i32* %95)
  %97 = load i32, i32* %7, align 4
  %98 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %98)
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read_word(i32*, i8*, i32) #2

declare dso_local i32 @strnunvis(i8*, i32, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @IS_DOTDOT(i8*) #2

declare dso_local i32 @mtree_error(i8*) #2

declare dso_local i64 @IS_DOT(i8*) #2

declare dso_local i32 @read_mtree_spec1(i32*, i32, i8*) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @skip_to(i32*, i8*) #2

declare dso_local i32 @getc(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
