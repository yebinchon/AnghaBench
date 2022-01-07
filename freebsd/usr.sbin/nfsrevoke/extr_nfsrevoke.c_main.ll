; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nfsrevoke/extr_nfsrevoke.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nfsrevoke/extr_nfsrevoke.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_clid = type { i32*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"nfsd\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"nfsd not loaded - self terminating\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Non hexadecimal digit in %s\00", align 1
@NFSV4_OPAQUELIMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Clientid %s, loo long\00", align 1
@NFSSVC_ADMINREVOKE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Admin revoke failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfsd_clid, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call i64 @modfind(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @usage()
  br label %20

20:                                               ; preds = %18, %15
  store i32 0, i32* %8, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = srem i32 %25, 2
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %30

29:                                               ; preds = %20
  store i32 1, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %28
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %118, %30
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %121

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sge i32 %38, 48
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sle i32 %43, 57
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = sub nsw i32 %48, 48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %95

52:                                               ; preds = %40, %35
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sge i32 %55, 65
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sle i32 %60, 70
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = sub nsw i32 %65, 65
  %67 = add nsw i32 %66, 10
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %94

70:                                               ; preds = %57, %52
  %71 = load i8*, i8** %6, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sge i32 %73, 97
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load i8*, i8** %6, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp sle i32 %78, 102
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load i8*, i8** %6, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = sub nsw i32 %83, 97
  %85 = add nsw i32 %84, 10
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %93

88:                                               ; preds = %75, %70
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %88, %80
  br label %94

94:                                               ; preds = %93, %62
  br label %95

95:                                               ; preds = %94, %45
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = shl i32 %99, 4
  store i32 %100, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %118

101:                                              ; preds = %95
  %102 = load i32, i32* %7, align 4
  %103 = getelementptr inbounds %struct.nfsd_clid, %struct.nfsd_clid* %10, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %102, i32* %108, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @NFSV4_OPAQUELIMIT, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %101
  %113 = load i8**, i8*** %5, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %112, %101
  store i32 0, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %118

118:                                              ; preds = %117, %98
  %119 = load i8*, i8** %6, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %6, align 8
  br label %31

121:                                              ; preds = %31
  %122 = load i32, i32* %8, align 4
  %123 = getelementptr inbounds %struct.nfsd_clid, %struct.nfsd_clid* %10, i32 0, i32 1
  store i32 %122, i32* %123, align 8
  %124 = load i32, i32* @NFSSVC_ADMINREVOKE, align 4
  %125 = call i64 @nfssvc(i32 %124, %struct.nfsd_clid* %10)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %121
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i64 @modfind(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @nfssvc(i32, %struct.nfsd_clid*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
