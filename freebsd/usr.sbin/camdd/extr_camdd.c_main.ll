; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camdd_io_opts = type { i64 }

@CAMDD_ARG_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to allocate option list\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"C:Ehi:m:o:t:v\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"retry count %d is < 0\00", align 1
@CAMDD_ARG_RETRIES = common dso_local global i32 0, align 4
@CAMDD_ARG_ERR_RECOVER = common dso_local global i32 0, align 4
@CAMDD_DEV_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Only one input and output path allowed\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"invalid maximum I/O amount %s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"invalid timeout %d\00", align 1
@CAMDD_ARG_TIMEOUT = common dso_local global i32 0, align 4
@CAMDD_ARG_VERBOSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Must specify both -i and -o\00", align 1
@CAMDD_PASS_RW_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.camdd_io_opts*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @CAMDD_ARG_NONE, align 4
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.camdd_io_opts* null, %struct.camdd_io_opts** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 (...) @usage()
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %2
  %20 = call %struct.camdd_io_opts* @calloc(i32 2, i32 8)
  store %struct.camdd_io_opts* %20, %struct.camdd_io_opts** %12, align 8
  %21 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %12, align 8
  %22 = icmp eq %struct.camdd_io_opts* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %151

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %123, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = call i32 @getopt(i32 %27, i8** %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %6, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %124

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %120 [
    i32 67, label %33
    i32 69, label %45
    i32 105, label %49
    i32 111, label %49
    i32 109, label %92
    i32 116, label %101
    i32 118, label %115
    i32 104, label %119
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @optarg, align 4
  %35 = call i32 @strtol(i32 %34, i32* null, i32 0)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* @CAMDD_ARG_RETRIES, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %123

45:                                               ; preds = %31
  %46 = load i32, i32* @CAMDD_ARG_ERR_RECOVER, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %123

49:                                               ; preds = %31, %31
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 105
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %12, align 8
  %54 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %53, i64 0
  %55 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CAMDD_DEV_NONE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %52, %49
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 111
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %12, align 8
  %64 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %63, i64 1
  %65 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CAMDD_DEV_NONE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62, %52
  %70 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %62, %59
  %72 = load i32, i32* @optarg, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 111
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 111
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %12, align 8
  %81 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %80, i64 1
  br label %85

82:                                               ; preds = %71
  %83 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %12, align 8
  %84 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %83, i64 0
  br label %85

85:                                               ; preds = %82, %79
  %86 = phi %struct.camdd_io_opts* [ %81, %79 ], [ %84, %82 ]
  %87 = call i32 @camdd_parse_io_opts(i32 %72, i32 %76, %struct.camdd_io_opts* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %151

91:                                               ; preds = %85
  br label %123

92:                                               ; preds = %31
  %93 = load i32, i32* @optarg, align 4
  %94 = call i32 @expand_number(i32 %93, i32* %11)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @optarg, align 4
  %99 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  store i32 1, i32* %10, align 4
  br label %151

100:                                              ; preds = %92
  br label %123

101:                                              ; preds = %31
  %102 = load i32, i32* @optarg, align 4
  %103 = call i32 @strtol(i32 %102, i32* null, i32 0)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* %8, align 4
  %108 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %106, %101
  %110 = load i32, i32* %8, align 4
  %111 = mul nsw i32 %110, 1000
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* @CAMDD_ARG_TIMEOUT, align 4
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %7, align 4
  br label %123

115:                                              ; preds = %31
  %116 = load i32, i32* @CAMDD_ARG_VERBOSE, align 4
  %117 = load i32, i32* %7, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %7, align 4
  br label %123

119:                                              ; preds = %31
  br label %120

120:                                              ; preds = %31, %119
  %121 = call i32 (...) @usage()
  %122 = call i32 @exit(i32 1) #3
  unreachable

123:                                              ; preds = %115, %109, %100, %91, %45, %41
  br label %26

124:                                              ; preds = %26
  %125 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %12, align 8
  %126 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %125, i64 0
  %127 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @CAMDD_DEV_NONE, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %138, label %131

131:                                              ; preds = %124
  %132 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %12, align 8
  %133 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %132, i64 1
  %134 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @CAMDD_DEV_NONE, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %131, %124
  %139 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %131
  %141 = load i32, i32* %8, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, i32* @CAMDD_PASS_RW_TIMEOUT, align 4
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %143, %140
  %146 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %12, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @camdd_rw(%struct.camdd_io_opts* %146, i32 2, i32 %147, i32 %148, i32 %149)
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %145, %97, %90, %23
  %152 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %12, align 8
  %153 = call i32 @free(%struct.camdd_io_opts* %152)
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @exit(i32 %154) #3
  unreachable
}

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.camdd_io_opts* @calloc(i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtol(i32, i32*, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @camdd_parse_io_opts(i32, i32, %struct.camdd_io_opts*) #1

declare dso_local i32 @expand_number(i32, i32*) #1

declare dso_local i32 @camdd_rw(%struct.camdd_io_opts*, i32, i32, i32, i32) #1

declare dso_local i32 @free(%struct.camdd_io_opts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
