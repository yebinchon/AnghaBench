; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpiconf/extr_acpiconf.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpiconf/extr_acpiconf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"hi:k:s:\00", align 1
@optarg = common dso_local global i8* null, align 8
@EX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"invalid battery\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid ack argument\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"invalid sleep type\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"invalid sleep type (%d)\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"-i, -k and -s are mutually exclusive\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"-i and -k are mutually exclusive\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"-i and -s are mutually exclusive\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"-k and -s are mutually exclusive\00", align 1
@acpifd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @usage(i8* %21)
  br label %23

23:                                               ; preds = %20, %2
  store i32 -1, i32* %9, align 4
  %24 = call i32 (...) @acpi_init()
  br label %25

25:                                               ; preds = %100, %23
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = call i32 @getopt(i32 %26, i8** %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %101

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %97 [
    i32 105, label %32
    i32 107, label %47
    i32 115, label %62
    i32 104, label %96
  ]

32:                                               ; preds = %30
  store i32 1, i32* %12, align 4
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i32 @strtol(i8* %33, i8** %7, i32 10)
  store i32 %34, i32* %10, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** @optarg, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i64 @strlen(i8* %40)
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @EX_USAGE, align 4
  %45 = call i32 (i32, i8*, ...) @errx(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %32
  br label %100

47:                                               ; preds = %30
  store i32 1, i32* %13, align 4
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i32 @strtol(i8* %48, i8** %7, i32 10)
  store i32 %49, i32* %11, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** @optarg, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = load i8*, i8** @optarg, align 8
  %56 = call i64 @strlen(i8* %55)
  %57 = icmp ne i64 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* @EX_USAGE, align 4
  %60 = call i32 (i32, i8*, ...) @errx(i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %47
  br label %100

62:                                               ; preds = %30
  store i32 1, i32* %14, align 4
  %63 = load i8*, i8** @optarg, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 83
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i8*, i8** @optarg, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** @optarg, align 8
  br label %71

71:                                               ; preds = %68, %62
  %72 = load i8*, i8** @optarg, align 8
  %73 = call i32 @strtol(i8* %72, i8** %7, i32 10)
  store i32 %73, i32* %9, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** @optarg, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = load i8*, i8** @optarg, align 8
  %80 = call i64 @strlen(i8* %79)
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load i32, i32* @EX_USAGE, align 4
  %84 = call i32 (i32, i8*, ...) @errx(i32 %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %71
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 1
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = icmp sgt i32 %89, 4
  br i1 %90, label %91, label %95

91:                                               ; preds = %88, %85
  %92 = load i32, i32* @EX_USAGE, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 (i32, i8*, ...) @errx(i32 %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %91, %88
  br label %100

96:                                               ; preds = %30
  br label %97

97:                                               ; preds = %30, %96
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @usage(i8* %98)
  br label %100

100:                                              ; preds = %97, %95, %61, %46
  br label %25

101:                                              ; preds = %25
  %102 = load i64, i64* @optind, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = sub nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %4, align 4
  %107 = load i64, i64* @optind, align 8
  %108 = load i8**, i8*** %5, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 %107
  store i8** %109, i8*** %5, align 8
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %101
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* @EX_USAGE, align 4
  %120 = call i32 (i32, i8*, ...) @errx(i32 %119, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %115, %112, %101
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %121
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* @EX_USAGE, align 4
  %129 = call i32 (i32, i8*, ...) @errx(i32 %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* @EX_USAGE, align 4
  %135 = call i32 (i32, i8*, ...) @errx(i32 %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @acpi_battinfo(i32 %137)
  br label %139

139:                                              ; preds = %136, %121
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %139
  %143 = load i32, i32* %14, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* @EX_USAGE, align 4
  %147 = call i32 (i32, i8*, ...) @errx(i32 %146, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @acpi_sleep_ack(i32 %149)
  br label %151

151:                                              ; preds = %148, %139
  %152 = load i32, i32* %14, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @acpi_sleep(i32 %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i32, i32* @acpifd, align 4
  %159 = call i32 @close(i32 %158)
  %160 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @acpi_init(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @acpi_battinfo(i32) #1

declare dso_local i32 @acpi_sleep_ack(i32) #1

declare dso_local i32 @acpi_sleep(i32) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
