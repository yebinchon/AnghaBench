; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/setfmac/extr_setfmac.c_add_specs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/setfmac/extr_setfmac.c_add_specs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.label_specs = type { i32 }
%struct.label_spec = type { i64, i32* }

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"opening %s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"fgetln on %s\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%s ended prematurely\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"failure reading %s\00", align 1
@qflag = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"%s: read %lu specifications\00", align 1
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_specs(%struct.label_specs* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.label_specs*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.label_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.label_specs* %0, %struct.label_specs** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %10, align 8
  %13 = call %struct.label_spec* @malloc(i32 16)
  store %struct.label_spec* %13, %struct.label_spec** %7, align 8
  %14 = load %struct.label_spec*, %struct.label_spec** %7, align 8
  %15 = icmp eq %struct.label_spec* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %23, %18
  br label %27

27:                                               ; preds = %44, %26
  %28 = load i32*, i32** %8, align 8
  %29 = call i8* @fgetln(i32* %28, i64* %11)
  store i8* %29, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = call i32 @chomp_line(i8** %9, i64* %11)
  store i32 %32, i32* %12, align 4
  %33 = load i64, i64* %11, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @free(i8* %42)
  br label %44

44:                                               ; preds = %41, %38
  br label %27

45:                                               ; preds = %27
  %46 = load i32*, i32** %8, align 8
  %47 = call i64 @ferror(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @rewind(i32* %53)
  %55 = load i64, i64* %10, align 8
  %56 = call i32* @calloc(i64 %55, i32 4)
  %57 = load %struct.label_spec*, %struct.label_spec** %7, align 8
  %58 = getelementptr inbounds %struct.label_spec, %struct.label_spec* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load %struct.label_spec*, %struct.label_spec** %7, align 8
  %60 = getelementptr inbounds %struct.label_spec, %struct.label_spec* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %52
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.label_spec*, %struct.label_spec** %7, align 8
  %68 = getelementptr inbounds %struct.label_spec, %struct.label_spec* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %115, %98, %65
  %70 = load i64, i64* %10, align 8
  %71 = icmp ugt i64 %70, 0
  br i1 %71, label %72, label %116

72:                                               ; preds = %69
  %73 = load i32*, i32** %8, align 8
  %74 = call i8* @fgetln(i32* %73, i64* %11)
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load i32*, i32** %8, align 8
  %79 = call i64 @feof(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %82)
  br label %87

84:                                               ; preds = %77
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %72
  %89 = call i32 @chomp_line(i8** %9, i64* %11)
  store i32 %89, i32* %12, align 4
  %90 = load i64, i64* %11, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @free(i8* %96)
  br label %98

98:                                               ; preds = %95, %92
  br label %69

99:                                               ; preds = %88
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.label_spec*, %struct.label_spec** %7, align 8
  %103 = getelementptr inbounds %struct.label_spec, %struct.label_spec* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %105, -1
  store i64 %106, i64* %10, align 8
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @add_spec_line(i8* %100, i32 %101, i32* %107, i8* %108)
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %99
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @free(i8* %113)
  br label %115

115:                                              ; preds = %112, %99
  br label %69

116:                                              ; preds = %69
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @fclose(i32* %117)
  %119 = load i32, i32* @qflag, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %116
  %122 = load i8*, i8** %5, align 8
  %123 = load %struct.label_spec*, %struct.label_spec** %7, align 8
  %124 = getelementptr inbounds %struct.label_spec, %struct.label_spec* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %122, i64 %125)
  br label %127

127:                                              ; preds = %121, %116
  %128 = load %struct.label_specs*, %struct.label_specs** %4, align 8
  %129 = getelementptr inbounds %struct.label_specs, %struct.label_specs* %128, i32 0, i32 0
  %130 = load %struct.label_spec*, %struct.label_spec** %7, align 8
  %131 = load i32, i32* @link, align 4
  %132 = call i32 @STAILQ_INSERT_TAIL(i32* %129, %struct.label_spec* %130, i32 %131)
  ret void
}

declare dso_local %struct.label_spec* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i32 @chomp_line(i8**, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @add_spec_line(i8*, i32, i32*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @warnx(i8*, i8*, i64) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.label_spec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
