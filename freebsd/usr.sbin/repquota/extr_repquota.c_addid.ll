; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/repquota/extr_repquota.c_addid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/repquota/extr_repquota.c_addid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileusage = type { i32, i32, %struct.fileusage* }

@.str = private unnamed_addr constant [39 x i8] c"out of memory for fileusage structures\00", align 1
@fuhead = common dso_local global %struct.fileusage*** null, align 8
@FUHASH = common dso_local global i32 0, align 4
@highid = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fileusage* @addid(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.fileusage*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fileusage*, align 8
  %9 = alloca %struct.fileusage**, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.fileusage* @lookup(i32 %11, i32 %12)
  store %struct.fileusage* %13, %struct.fileusage** %8, align 8
  %14 = icmp ne %struct.fileusage* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load %struct.fileusage*, %struct.fileusage** %8, align 8
  store %struct.fileusage* %16, %struct.fileusage** %4, align 8
  br label %87

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %10, align 4
  br label %24

23:                                               ; preds = %17
  store i32 10, i32* %10, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 16, %26
  %28 = trunc i64 %27 to i32
  %29 = call i64 @calloc(i32 1, i32 %28)
  %30 = inttoptr i64 %29 to %struct.fileusage*
  store %struct.fileusage* %30, %struct.fileusage** %8, align 8
  %31 = icmp eq %struct.fileusage* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 @errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %24
  %35 = load %struct.fileusage***, %struct.fileusage**** @fuhead, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.fileusage**, %struct.fileusage*** %35, i64 %37
  %39 = load %struct.fileusage**, %struct.fileusage*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @FUHASH, align 4
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %40, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.fileusage*, %struct.fileusage** %39, i64 %44
  store %struct.fileusage** %45, %struct.fileusage*** %9, align 8
  %46 = load %struct.fileusage**, %struct.fileusage*** %9, align 8
  %47 = load %struct.fileusage*, %struct.fileusage** %46, align 8
  %48 = load %struct.fileusage*, %struct.fileusage** %8, align 8
  %49 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %48, i32 0, i32 2
  store %struct.fileusage* %47, %struct.fileusage** %49, align 8
  %50 = load %struct.fileusage*, %struct.fileusage** %8, align 8
  %51 = load %struct.fileusage**, %struct.fileusage*** %9, align 8
  store %struct.fileusage* %50, %struct.fileusage** %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.fileusage*, %struct.fileusage** %8, align 8
  %54 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32*, i32** @highid, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %55, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %34
  %63 = load i32, i32* %5, align 4
  %64 = load i32*, i32** @highid, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %34
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i8*, i8** %7, align 8
  %73 = load %struct.fileusage*, %struct.fileusage** %8, align 8
  %74 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @bcopy(i8* %72, i32 %75, i32 %77)
  br label %85

79:                                               ; preds = %68
  %80 = load %struct.fileusage*, %struct.fileusage** %8, align 8
  %81 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @sprintf(i32 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79, %71
  %86 = load %struct.fileusage*, %struct.fileusage** %8, align 8
  store %struct.fileusage* %86, %struct.fileusage** %4, align 8
  br label %87

87:                                               ; preds = %85, %15
  %88 = load %struct.fileusage*, %struct.fileusage** %4, align 8
  ret %struct.fileusage* %88
}

declare dso_local %struct.fileusage* @lookup(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @bcopy(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
