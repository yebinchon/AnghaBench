; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_banner.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i32, i8*, i32, i64 }

@ofd = common dso_local global i32 0, align 4
@class = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"  Job: \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"  Date: \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\0A\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"\0A\0A\0A\0A\09\09\09\09\09Job:  \00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"\0A\09\09\09\09\09Date: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.printer*, i8*, i8*)* @banner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @banner(%struct.printer* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.printer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.printer* %0, %struct.printer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call i32 @time(i32* %7)
  %9 = load %struct.printer*, %struct.printer** %4, align 8
  %10 = getelementptr inbounds %struct.printer, %struct.printer* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %3
  %14 = load %struct.printer*, %struct.printer** %4, align 8
  %15 = getelementptr inbounds %struct.printer, %struct.printer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ofd, align 4
  %20 = load %struct.printer*, %struct.printer** %4, align 8
  %21 = getelementptr inbounds %struct.printer, %struct.printer* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.printer*, %struct.printer** %4, align 8
  %24 = getelementptr inbounds %struct.printer, %struct.printer* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = call i32 @write(i32 %19, i8* %22, i32 %26)
  br label %28

28:                                               ; preds = %18, %13, %3
  %29 = load %struct.printer*, %struct.printer** %4, align 8
  %30 = getelementptr inbounds %struct.printer, %struct.printer* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %28
  %34 = load i8*, i8** @class, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* @ofd, align 4
  %40 = load i8*, i8** @class, align 8
  %41 = load i8*, i8** @class, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = call i32 @write(i32 %39, i8* %40, i32 %42)
  %44 = load i32, i32* @ofd, align 4
  %45 = call i32 @write(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %46

46:                                               ; preds = %38, %33
  %47 = load i32, i32* @ofd, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = call i32 @write(i32 %47, i8* %48, i32 %50)
  %52 = load i32, i32* @ofd, align 4
  %53 = call i32 @write(i32 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %54 = load i32, i32* @ofd, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = call i32 @write(i32 %54, i8* %55, i32 %57)
  %59 = load i32, i32* @ofd, align 4
  %60 = call i32 @write(i32 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %61 = load i32, i32* @ofd, align 4
  %62 = call i8* @ctime(i32* %7)
  %63 = call i32 @write(i32 %61, i8* %62, i32 24)
  %64 = load i32, i32* @ofd, align 4
  %65 = call i32 @write(i32 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %105

66:                                               ; preds = %28
  %67 = load i32, i32* @ofd, align 4
  %68 = call i32 @write(i32 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %69 = load %struct.printer*, %struct.printer** %4, align 8
  %70 = load i32, i32* @ofd, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @scan_out(%struct.printer* %69, i32 %70, i8* %71, i8 signext 0)
  %73 = load i32, i32* @ofd, align 4
  %74 = call i32 @write(i32 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %75 = load %struct.printer*, %struct.printer** %4, align 8
  %76 = load i32, i32* @ofd, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @scan_out(%struct.printer* %75, i32 %76, i8* %77, i8 signext 0)
  %79 = load i8*, i8** @class, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %66
  %84 = load i32, i32* @ofd, align 4
  %85 = call i32 @write(i32 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %86 = load %struct.printer*, %struct.printer** %4, align 8
  %87 = load i32, i32* @ofd, align 4
  %88 = load i8*, i8** @class, align 8
  %89 = call i32 @scan_out(%struct.printer* %86, i32 %87, i8* %88, i8 signext 0)
  br label %90

90:                                               ; preds = %83, %66
  %91 = load i32, i32* @ofd, align 4
  %92 = call i32 @write(i32 %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 15)
  %93 = load i32, i32* @ofd, align 4
  %94 = load i8*, i8** %6, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = call i32 @write(i32 %93, i8* %94, i32 %96)
  %98 = load i32, i32* @ofd, align 4
  %99 = call i32 @write(i32 %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 12)
  %100 = load i32, i32* @ofd, align 4
  %101 = call i8* @ctime(i32* %7)
  %102 = call i32 @write(i32 %100, i8* %101, i32 24)
  %103 = load i32, i32* @ofd, align 4
  %104 = call i32 @write(i32 %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %105

105:                                              ; preds = %90, %46
  %106 = load %struct.printer*, %struct.printer** %4, align 8
  %107 = getelementptr inbounds %struct.printer, %struct.printer* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* @ofd, align 4
  %112 = load %struct.printer*, %struct.printer** %4, align 8
  %113 = getelementptr inbounds %struct.printer, %struct.printer* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.printer*, %struct.printer** %4, align 8
  %116 = getelementptr inbounds %struct.printer, %struct.printer* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @strlen(i8* %117)
  %119 = call i32 @write(i32 %111, i8* %114, i32 %118)
  br label %120

120:                                              ; preds = %110, %105
  %121 = load %struct.printer*, %struct.printer** %4, align 8
  %122 = getelementptr inbounds %struct.printer, %struct.printer* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i32 @scan_out(%struct.printer*, i32, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
