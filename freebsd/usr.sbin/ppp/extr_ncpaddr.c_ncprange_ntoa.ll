; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncprange_ntoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncprange_ntoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncprange = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ncpaddr = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"<AF_UNSPEC>\00", align 1
@NCP_ASCIIBUFFERSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"&0x%08lx\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ncprange_ntoa(%struct.ncprange* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ncprange*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ncpaddr, align 4
  %6 = alloca i32, align 4
  store %struct.ncprange* %0, %struct.ncprange** %3, align 8
  %7 = load %struct.ncprange*, %struct.ncprange** %3, align 8
  %8 = call i32 @ncprange_getaddr(%struct.ncprange* %7, %struct.ncpaddr* %5)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %109

11:                                               ; preds = %1
  %12 = call i8* @ncpaddr_ntowa(%struct.ncpaddr* %5)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @NCP_ASCIIBUFFERSIZE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp sge i32 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %2, align 8
  br label %109

21:                                               ; preds = %11
  %22 = load %struct.ncprange*, %struct.ncprange** %3, align 8
  %23 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %108 [
    i32 129, label %25
    i32 128, label %87
  ]

25:                                               ; preds = %21
  %26 = load %struct.ncprange*, %struct.ncprange** %3, align 8
  %27 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %65

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp sge i32 %32, 3
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = getelementptr inbounds i8, i8* %38, i64 -2
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %50

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 2
  store i32 %47, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8 0, i8* %49, align 1
  br label %31

50:                                               ; preds = %42, %31
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 8, %56
  %58 = trunc i64 %57 to i32
  %59 = load %struct.ncprange*, %struct.ncprange** %3, align 8
  %60 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ntohl(i32 %62)
  %64 = call i32 @snprintf(i8* %54, i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %63)
  br label %85

65:                                               ; preds = %25
  %66 = load %struct.ncprange*, %struct.ncprange** %3, align 8
  %67 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 32
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = sub i64 8, %76
  %78 = trunc i64 %77 to i32
  %79 = load %struct.ncprange*, %struct.ncprange** %3, align 8
  %80 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = call i32 @snprintf(i8* %74, i32 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %82)
  br label %84

84:                                               ; preds = %70, %65
  br label %85

85:                                               ; preds = %84, %50
  %86 = load i8*, i8** %4, align 8
  store i8* %86, i8** %2, align 8
  br label %109

87:                                               ; preds = %21
  %88 = load %struct.ncprange*, %struct.ncprange** %3, align 8
  %89 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 128
  br i1 %91, label %92, label %106

92:                                               ; preds = %87
  %93 = load i8*, i8** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = sub i64 8, %98
  %100 = trunc i64 %99 to i32
  %101 = load %struct.ncprange*, %struct.ncprange** %3, align 8
  %102 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = call i32 @snprintf(i8* %96, i32 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %104)
  br label %106

106:                                              ; preds = %92, %87
  %107 = load i8*, i8** %4, align 8
  store i8* %107, i8** %2, align 8
  br label %109

108:                                              ; preds = %21
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %109

109:                                              ; preds = %108, %106, %85, %19, %10
  %110 = load i8*, i8** %2, align 8
  ret i8* %110
}

declare dso_local i32 @ncprange_getaddr(%struct.ncprange*, %struct.ncpaddr*) #1

declare dso_local i8* @ncpaddr_ntowa(%struct.ncpaddr*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i64 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
