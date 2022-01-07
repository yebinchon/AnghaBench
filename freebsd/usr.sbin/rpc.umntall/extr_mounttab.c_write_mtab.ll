; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.umntall/extr_mounttab.c_write_mtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.umntall/extr_mounttab.c_write_mtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtablist = type { i8*, i8*, i64, %struct.mtablist* }

@PATH_MOUNTTAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"can't write to %s\00", align 1
@mtabhead = common dso_local global %struct.mtablist* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"%ld\09%s\09%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"write mounttab entry %s:%s\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"can't remove %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_mtab(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtablist*, align 8
  %5 = alloca %struct.mtablist*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @PATH_MOUNTTAB, align 4
  %9 = call i32* @fopen(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @LOG_ERR, align 4
  %13 = load i32, i32* @PATH_MOUNTTAB, align 4
  %14 = call i32 @syslog(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  store i32 0, i32* %2, align 4
  br label %108

15:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %16 = load %struct.mtablist*, %struct.mtablist** @mtabhead, align 8
  store %struct.mtablist* %16, %struct.mtablist** %4, align 8
  br label %17

17:                                               ; preds = %89, %15
  %18 = load %struct.mtablist*, %struct.mtablist** %4, align 8
  %19 = icmp ne %struct.mtablist* %18, null
  br i1 %19, label %20, label %93

20:                                               ; preds = %17
  %21 = load %struct.mtablist*, %struct.mtablist** %4, align 8
  %22 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %89

29:                                               ; preds = %20
  %30 = load %struct.mtablist*, %struct.mtablist** %4, align 8
  %31 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %30, i32 0, i32 3
  %32 = load %struct.mtablist*, %struct.mtablist** %31, align 8
  store %struct.mtablist* %32, %struct.mtablist** %5, align 8
  br label %33

33:                                               ; preds = %56, %29
  %34 = load %struct.mtablist*, %struct.mtablist** %5, align 8
  %35 = icmp ne %struct.mtablist* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  %37 = load %struct.mtablist*, %struct.mtablist** %4, align 8
  %38 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.mtablist*, %struct.mtablist** %5, align 8
  %41 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %39, i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load %struct.mtablist*, %struct.mtablist** %4, align 8
  %47 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.mtablist*, %struct.mtablist** %5, align 8
  %50 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strcmp(i8* %48, i8* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %60

55:                                               ; preds = %45, %36
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.mtablist*, %struct.mtablist** %5, align 8
  %58 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %57, i32 0, i32 3
  %59 = load %struct.mtablist*, %struct.mtablist** %58, align 8
  store %struct.mtablist* %59, %struct.mtablist** %5, align 8
  br label %33

60:                                               ; preds = %54, %33
  %61 = load %struct.mtablist*, %struct.mtablist** %5, align 8
  %62 = icmp ne %struct.mtablist* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %89

64:                                               ; preds = %60
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.mtablist*, %struct.mtablist** %4, align 8
  %67 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.mtablist*, %struct.mtablist** %4, align 8
  %70 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.mtablist*, %struct.mtablist** %4, align 8
  %73 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @fprintf(i32* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %68, i8* %71, i8* %74)
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %64
  %79 = load %struct.mtablist*, %struct.mtablist** %4, align 8
  %80 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.mtablist*, %struct.mtablist** %4, align 8
  %83 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %81, i8* %84)
  br label %86

86:                                               ; preds = %78, %64
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %86, %63, %28
  %90 = load %struct.mtablist*, %struct.mtablist** %4, align 8
  %91 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %90, i32 0, i32 3
  %92 = load %struct.mtablist*, %struct.mtablist** %91, align 8
  store %struct.mtablist* %92, %struct.mtablist** %4, align 8
  br label %17

93:                                               ; preds = %17
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @fclose(i32* %94)
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load i32, i32* @PATH_MOUNTTAB, align 4
  %100 = call i32 @unlink(i32 %99)
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32, i32* @LOG_ERR, align 4
  %104 = load i32, i32* @PATH_MOUNTTAB, align 4
  %105 = call i32 @syslog(i32 %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  store i32 0, i32* %2, align 4
  br label %108

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106, %93
  store i32 1, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %102, %11
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i64, i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
