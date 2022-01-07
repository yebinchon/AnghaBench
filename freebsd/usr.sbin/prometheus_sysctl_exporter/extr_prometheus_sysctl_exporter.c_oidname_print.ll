; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/prometheus_sysctl_exporter/extr_prometheus_sysctl_exporter.c_oidname_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/prometheus_sysctl_exporter/extr_prometheus_sysctl_exporter.c_oidname_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oidname = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.oidformat = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"sysctl\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"_celcius\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"_seconds\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%c%s=\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oidname*, %struct.oidformat*, i32*)* @oidname_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oidname_print(%struct.oidname* %0, %struct.oidformat* %1, i32* %2) #0 {
  %4 = alloca %struct.oidname*, align 8
  %5 = alloca %struct.oidformat*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store %struct.oidname* %0, %struct.oidname** %4, align 8
  store %struct.oidformat* %1, %struct.oidformat** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 (i32*, i8*, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.oidname*, %struct.oidname** %4, align 8
  %14 = getelementptr inbounds %struct.oidname, %struct.oidname* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load %struct.oidname*, %struct.oidname** %4, align 8
  %17 = getelementptr inbounds %struct.oidname, %struct.oidname* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  store i64 0, i64* %9, align 8
  br label %19

19:                                               ; preds = %68, %3
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.oidname*, %struct.oidname** %4, align 8
  %22 = getelementptr inbounds %struct.oidname, %struct.oidname* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %20, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %19
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @fputc(i8 signext 95, i32* %32)
  br label %34

34:                                               ; preds = %49, %31
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @isalnum(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  br label %49

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i32 [ %47, %44 ], [ 95, %48 ]
  %51 = trunc i32 %50 to i8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @fputc(i8 signext %51, i32* %52)
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %7, align 8
  br label %34

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %56, %26
  %58 = load i8*, i8** %7, align 8
  %59 = call i64 @strlen(i8* %58)
  %60 = add nsw i64 %59, 1
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 %60
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = add nsw i64 %64, 1
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 %65
  store i8* %67, i8** %8, align 8
  br label %68

68:                                               ; preds = %57
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %9, align 8
  br label %19

71:                                               ; preds = %19
  %72 = load %struct.oidformat*, %struct.oidformat** %5, align 8
  %73 = call i64 @oidformat_is_temperature(%struct.oidformat* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %86

78:                                               ; preds = %71
  %79 = load %struct.oidformat*, %struct.oidformat** %5, align 8
  %80 = call i64 @oidformat_is_timeval(%struct.oidformat* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %78
  br label %86

86:                                               ; preds = %85, %75
  %87 = load %struct.oidname*, %struct.oidname** %4, align 8
  %88 = getelementptr inbounds %struct.oidname, %struct.oidname* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %7, align 8
  %90 = load %struct.oidname*, %struct.oidname** %4, align 8
  %91 = getelementptr inbounds %struct.oidname, %struct.oidname* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %8, align 8
  store i8 123, i8* %10, align 1
  store i64 0, i64* %9, align 8
  br label %93

93:                                               ; preds = %158, %86
  %94 = load i64, i64* %9, align 8
  %95 = load %struct.oidname*, %struct.oidname** %4, align 8
  %96 = getelementptr inbounds %struct.oidname, %struct.oidname* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ult i64 %94, %98
  br i1 %99, label %100, label %161

100:                                              ; preds = %93
  %101 = load i8*, i8** %8, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %147

105:                                              ; preds = %100
  %106 = load i8*, i8** %8, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = call i64 @strspn(i8* %107, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load i32*, i32** %6, align 8
  %116 = load i8, i8* %10, align 1
  %117 = sext i8 %116 to i32
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 (i32*, i8*, ...) @fprintf(i32* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %117, i8* %118)
  br label %120

120:                                              ; preds = %138, %105
  %121 = load i8*, i8** %7, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %120
  %126 = load i8*, i8** %7, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 92
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load i8*, i8** %7, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 34
  br i1 %134, label %135, label %138

135:                                              ; preds = %130, %125
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @fputc(i8 signext 92, i32* %136)
  br label %138

138:                                              ; preds = %135, %130
  %139 = load i8*, i8** %7, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %7, align 8
  %141 = load i8, i8* %139, align 1
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 @fputc(i8 signext %141, i32* %142)
  br label %120

144:                                              ; preds = %120
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 @fputc(i8 signext 34, i32* %145)
  store i8 44, i8* %10, align 1
  br label %147

147:                                              ; preds = %144, %100
  %148 = load i8*, i8** %7, align 8
  %149 = call i64 @strlen(i8* %148)
  %150 = add nsw i64 %149, 1
  %151 = load i8*, i8** %7, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 %150
  store i8* %152, i8** %7, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = call i64 @strlen(i8* %153)
  %155 = add nsw i64 %154, 1
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 %155
  store i8* %157, i8** %8, align 8
  br label %158

158:                                              ; preds = %147
  %159 = load i64, i64* %9, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %9, align 8
  br label %93

161:                                              ; preds = %93
  %162 = load i8, i8* %10, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp ne i32 %163, 123
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i32*, i32** %6, align 8
  %167 = call i32 @fputc(i8 signext 125, i32* %166)
  br label %168

168:                                              ; preds = %165, %161
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @oidformat_is_temperature(%struct.oidformat*) #1

declare dso_local i64 @oidformat_is_timeval(%struct.oidformat*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
