; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_mdio_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_mdio_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_mii_data = type { i32, i32, i32, i32 }

@CHELSIO_GET_MIIREG = common dso_local global i32 0, align 4
@CHELSIO_SET_MIIREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"MDIO %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%#x [%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i8*)* @mdio_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_io(i32 %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ch_mii_data, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 3
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @CHELSIO_GET_MIIREG, align 4
  store i32 %21, i32* %11, align 4
  br label %31

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 4
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @CHELSIO_SET_MIIREG, align 4
  store i32 %28, i32* %11, align 4
  br label %30

29:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %103

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i8**, i8*** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @get_int_arg(i8* %36, i32* %12)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %70, label %39

39:                                               ; preds = %31
  %40 = load i8**, i8*** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %40, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @get_int_arg(i8* %45, i32* %14)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %70, label %48

48:                                               ; preds = %39
  %49 = load i8**, i8*** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %49, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @get_int_arg(i8* %54, i32* %13)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @CHELSIO_SET_MIIREG, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load i8**, i8*** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %62, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @get_int_arg(i8* %67, i32* %15)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61, %48, %39, %31
  store i32 -1, i32* %5, align 4
  br label %103

71:                                               ; preds = %61, %57
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %14, align 4
  %74 = shl i32 %73, 8
  %75 = or i32 %72, %74
  %76 = getelementptr inbounds %struct.ch_mii_data, %struct.ch_mii_data* %10, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %13, align 4
  %78 = getelementptr inbounds %struct.ch_mii_data, %struct.ch_mii_data* %10, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %15, align 4
  %80 = getelementptr inbounds %struct.ch_mii_data, %struct.ch_mii_data* %10, i32 0, i32 2
  store i32 %79, i32* %80, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i64 @doit(i8* %81, i32 %82, %struct.ch_mii_data* %10)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %71
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @CHELSIO_GET_MIIREG, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %91 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %85, %71
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @CHELSIO_GET_MIIREG, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.ch_mii_data, %struct.ch_mii_data* %10, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.ch_mii_data, %struct.ch_mii_data* %10, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %100)
  br label %102

102:                                              ; preds = %96, %92
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %102, %70, %29
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i64 @get_int_arg(i8*, i32*) #1

declare dso_local i64 @doit(i8*, i32, %struct.ch_mii_data*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
