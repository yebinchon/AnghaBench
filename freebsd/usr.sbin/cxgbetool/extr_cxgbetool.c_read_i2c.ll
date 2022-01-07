; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_read_i2c.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_read_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_i2c_data = type { i64, i64, i64, i64, i32* }

@.str = private unnamed_addr constant [31 x i8] c"incorrect number of arguments.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UCHAR_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid port id \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"invalid i2c device address \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"invalid byte offset \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"invalid number of bytes \22%s\22\00", align 1
@CHELSIO_T4_GET_I2C = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"0x%x [%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @read_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_i2c(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.t4_i2c_data, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 4
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %2
  %17 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %140

19:                                               ; preds = %13
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @str_to_number(i8* %22, i64* %7, i32* null)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @UCHAR_MAX, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28, %19
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %140

38:                                               ; preds = %28
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %8, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @str_to_number(i8* %43, i64* %7, i32* null)
  store i8* %44, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %38
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @UCHAR_MAX, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49, %38
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %3, align 4
  br label %140

59:                                               ; preds = %49
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %8, i32 0, i32 1
  store i64 %60, i64* %61, align 8
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i8* @str_to_number(i8* %64, i64* %7, i32* null)
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %59
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @UCHAR_MAX, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70, %59
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %3, align 4
  br label %140

80:                                               ; preds = %70
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %8, i32 0, i32 2
  store i64 %81, i64* %82, align 8
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, 4
  br i1 %84, label %85, label %106

85:                                               ; preds = %80
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 3
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @str_to_number(i8* %88, i64* %7, i32* null)
  store i8* %89, i8** %6, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %85
  %95 = load i64, i64* %7, align 8
  %96 = icmp ugt i64 %95, 8
  br i1 %96, label %97, label %103

97:                                               ; preds = %94, %85
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 3
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %100)
  %102 = load i32, i32* @EINVAL, align 4
  store i32 %102, i32* %3, align 4
  br label %140

103:                                              ; preds = %94
  %104 = load i64, i64* %7, align 8
  %105 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %8, i32 0, i32 3
  store i64 %104, i64* %105, align 8
  br label %108

106:                                              ; preds = %80
  %107 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %8, i32 0, i32 3
  store i64 1, i64* %107, align 8
  br label %108

108:                                              ; preds = %106, %103
  %109 = load i32, i32* @CHELSIO_T4_GET_I2C, align 4
  %110 = call i32 @doit(i32 %109, %struct.t4_i2c_data* %8)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %3, align 4
  br label %140

115:                                              ; preds = %108
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %136, %115
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %8, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %118, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %8, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.t4_i2c_data, %struct.t4_i2c_data* %8, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %128, i32 %134)
  br label %136

136:                                              ; preds = %122
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %116

139:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %113, %97, %74, %53, %32, %16
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i8* @str_to_number(i8*, i64*, i32*) #1

declare dso_local i32 @doit(i32, %struct.t4_i2c_data*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
