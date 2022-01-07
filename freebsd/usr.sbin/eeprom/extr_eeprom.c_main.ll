; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/eeprom/extr_eeprom.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/eeprom/extr_eeprom.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@EX_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@optind = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @BUFSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %11, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %12, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* @EX_OK, align 4
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %40, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %7, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %38 [
    i32 45, label %25
    i32 97, label %31
    i32 63, label %37
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @usage()
  br label %30

30:                                               ; preds = %28, %25
  store i32 1, i32* %6, align 4
  br label %40

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @usage()
  br label %36

36:                                               ; preds = %34, %31
  store i32 1, i32* %8, align 4
  br label %40

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %23, %37
  %39 = call i32 (...) @usage()
  br label %40

40:                                               ; preds = %38, %36, %30
  br label %18

41:                                               ; preds = %18
  %42 = load i64, i64* @optind, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load i64, i64* @optind, align 8
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  store i8** %49, i8*** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %41
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (...) @usage()
  br label %57

57:                                               ; preds = %55, %52
  %58 = call i32 (...) @dump_config()
  br label %120

59:                                               ; preds = %41
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %95

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %85, %79, %62
  %64 = load i32, i32* @BUFSIZ, align 4
  %65 = load i32, i32* @stdin, align 4
  %66 = call i32* @fgets(i8* %16, i32 %64, i32 %65)
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @EX_OK, align 4
  %71 = icmp eq i32 %69, %70
  br label %72

72:                                               ; preds = %68, %63
  %73 = phi i1 [ false, %63 ], [ %71, %68 ]
  br i1 %73, label %74, label %87

74:                                               ; preds = %72
  %75 = getelementptr inbounds i8, i8* %16, i64 0
  %76 = load i8, i8* %75, align 16
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 10
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %63

80:                                               ; preds = %74
  %81 = call i8* @strrchr(i8* %16, i8 signext 10)
  store i8* %81, i8** %10, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i8*, i8** %10, align 8
  store i8 0, i8* %84, align 1
  br label %85

85:                                               ; preds = %83, %80
  %86 = call i32 @action(i8* %16)
  store i32 %86, i32* %9, align 4
  br label %63

87:                                               ; preds = %72
  %88 = load i32, i32* @stdin, align 4
  %89 = call i64 @ferror(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* @EX_NOINPUT, align 4
  %93 = call i32 @err(i32 %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %87
  br label %119

95:                                               ; preds = %59
  %96 = load i32, i32* %4, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 (...) @usage()
  br label %100

100:                                              ; preds = %98, %95
  br label %101

101:                                              ; preds = %110, %100
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @EX_OK, align 4
  %107 = icmp eq i32 %105, %106
  br label %108

108:                                              ; preds = %104, %101
  %109 = phi i1 [ false, %101 ], [ %107, %104 ]
  br i1 %109, label %110, label %118

110:                                              ; preds = %108
  %111 = load i8**, i8*** %5, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @action(i8* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i8**, i8*** %5, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i32 1
  store i8** %115, i8*** %5, align 8
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %4, align 4
  br label %101

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118, %94
  br label %120

120:                                              ; preds = %119, %57
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %3, align 4
  %122 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @dump_config(...) #2

declare dso_local i32* @fgets(i8*, i32, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @action(i8*) #2

declare dso_local i64 @ferror(i32) #2

declare dso_local i32 @err(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
