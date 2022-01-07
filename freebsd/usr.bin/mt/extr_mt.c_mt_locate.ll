; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mt/extr_mt.c_mt_locate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mt/extr_mt.c_mt_locate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtlocate = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"b:eEf:ip:s:\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"You must specify only one of -b, -f, -e, or -s\00", align 1
@MT_LOCATE_FLAG_IMMED = common dso_local global i32 0, align 4
@MT_LOCATE_FLAG_CHANGE_PART = common dso_local global i32 0, align 4
@MT_LOCATE_BAM_EXPLICIT = common dso_local global i32 0, align 4
@MT_LOCATE_BAM_IMPLICIT = common dso_local global i32 0, align 4
@MTIOCEXTLOCATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"MTIOCEXTLOCATE ioctl failed on %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i8*)* @mt_locate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt_locate(i32 %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mtlocate, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 130, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %22 = call i32 @bzero(%struct.mtlocate* %9, i32 20)
  br label %23

23:                                               ; preds = %46, %4
  %24 = load i32, i32* %5, align 4
  %25 = load i8**, i8*** %6, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %20, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load i32, i32* %20, align 4
  switch i32 %29, label %45 [
    i32 98, label %30
    i32 101, label %33
    i32 69, label %34
    i32 102, label %35
    i32 105, label %38
    i32 112, label %39
    i32 115, label %42
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @optarg, align 4
  %32 = call i32 @strtoull(i32 %31, i32* null, i32 0)
  store i32 %32, i32* %10, align 4
  store i32 129, i32* %11, align 4
  store i32 1, i32* %16, align 4
  br label %46

33:                                               ; preds = %28
  store i32 1, i32* %12, align 4
  store i32 131, i32* %11, align 4
  br label %46

34:                                               ; preds = %28
  store i32 1, i32* %13, align 4
  br label %46

35:                                               ; preds = %28
  %36 = load i32, i32* @optarg, align 4
  %37 = call i32 @strtoull(i32 %36, i32* null, i32 0)
  store i32 %37, i32* %10, align 4
  store i32 130, i32* %11, align 4
  store i32 1, i32* %18, align 4
  br label %46

38:                                               ; preds = %28
  store i32 1, i32* %14, align 4
  br label %46

39:                                               ; preds = %28
  %40 = load i32, i32* @optarg, align 4
  %41 = call i32 @strtol(i32 %40, i32* null, i32 0)
  store i32 %41, i32* %15, align 4
  store i32 1, i32* %17, align 4
  br label %46

42:                                               ; preds = %28
  %43 = load i32, i32* @optarg, align 4
  %44 = call i32 @strtoull(i32 %43, i32* null, i32 0)
  store i32 %44, i32* %10, align 4
  store i32 128, i32* %11, align 4
  store i32 1, i32* %19, align 4
  br label %46

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45, %42, %39, %38, %35, %34, %33, %30
  br label %23

47:                                               ; preds = %23
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %18, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* %19, align 4
  %54 = add nsw i32 %52, %53
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = call i32 @errx(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %47
  %59 = load i32, i32* %11, align 4
  %60 = getelementptr inbounds %struct.mtlocate, %struct.mtlocate* %9, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  switch i32 %61, label %66 [
    i32 129, label %62
    i32 130, label %62
    i32 128, label %62
    i32 131, label %65
  ]

62:                                               ; preds = %58, %58, %58
  %63 = load i32, i32* %10, align 4
  %64 = getelementptr inbounds %struct.mtlocate, %struct.mtlocate* %9, i32 0, i32 4
  store i32 %63, i32* %64, align 4
  br label %66

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %58, %65, %62
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* @MT_LOCATE_FLAG_IMMED, align 4
  %71 = getelementptr inbounds %struct.mtlocate, %struct.mtlocate* %9, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %69, %66
  %75 = load i32, i32* %17, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* @MT_LOCATE_FLAG_CHANGE_PART, align 4
  %79 = getelementptr inbounds %struct.mtlocate, %struct.mtlocate* %9, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %15, align 4
  %83 = getelementptr inbounds %struct.mtlocate, %struct.mtlocate* %9, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %77, %74
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @MT_LOCATE_BAM_EXPLICIT, align 4
  %89 = getelementptr inbounds %struct.mtlocate, %struct.mtlocate* %9, i32 0, i32 1
  store i32 %88, i32* %89, align 4
  br label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @MT_LOCATE_BAM_IMPLICIT, align 4
  %92 = getelementptr inbounds %struct.mtlocate, %struct.mtlocate* %9, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @MTIOCEXTLOCATE, align 4
  %96 = call i32 @ioctl(i32 %94, i32 %95, %struct.mtlocate* %9)
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %98, %93
  %102 = load i32, i32* %21, align 4
  ret i32 %102
}

declare dso_local i32 @bzero(%struct.mtlocate*, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtoull(i32, i32*, i32) #1

declare dso_local i32 @strtol(i32, i32*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.mtlocate*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
