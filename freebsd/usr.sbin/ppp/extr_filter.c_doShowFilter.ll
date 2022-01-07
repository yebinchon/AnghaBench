; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_filter.c_doShowFilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_filter.c_doShowFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filterent = type { i64, i32, i32, i64, i64, i64, i32, i64, i32, i64, i32, i32, i32, i32, i64 }
%struct.prompt = type { i32 }
%struct.protoent = type { i32 }

@MAXFILTERS = common dso_local global i32 0, align 4
@A_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"  %2d %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"any \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"P:%d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" src %s %d\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" dst %s %d\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" estab\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" syn\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" finrst\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c" timeout %u\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filterent*, %struct.prompt*)* @doShowFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doShowFilter(%struct.filterent* %0, %struct.prompt* %1) #0 {
  %3 = alloca %struct.filterent*, align 8
  %4 = alloca %struct.prompt*, align 8
  %5 = alloca %struct.protoent*, align 8
  %6 = alloca i32, align 4
  store %struct.filterent* %0, %struct.filterent** %3, align 8
  store %struct.prompt* %1, %struct.prompt** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %162, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @MAXFILTERS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %167

11:                                               ; preds = %7
  %12 = load %struct.filterent*, %struct.filterent** %3, align 8
  %13 = getelementptr inbounds %struct.filterent, %struct.filterent* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @A_NONE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %161

17:                                               ; preds = %11
  %18 = load %struct.prompt*, %struct.prompt** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.filterent*, %struct.filterent** %3, align 8
  %21 = getelementptr inbounds %struct.filterent, %struct.filterent* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @filter_Action2Nam(i64 %22)
  %24 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23)
  %25 = load %struct.prompt*, %struct.prompt** %4, align 8
  %26 = load %struct.filterent*, %struct.filterent** %3, align 8
  %27 = getelementptr inbounds %struct.filterent, %struct.filterent* %26, i32 0, i32 14
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 33, i32 32
  %32 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.filterent*, %struct.filterent** %3, align 8
  %34 = getelementptr inbounds %struct.filterent, %struct.filterent* %33, i32 0, i32 13
  %35 = call i64 @ncprange_isset(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %17
  %38 = load %struct.prompt*, %struct.prompt** %4, align 8
  %39 = load %struct.filterent*, %struct.filterent** %3, align 8
  %40 = getelementptr inbounds %struct.filterent, %struct.filterent* %39, i32 0, i32 13
  %41 = load %struct.filterent*, %struct.filterent** %3, align 8
  %42 = getelementptr inbounds %struct.filterent, %struct.filterent* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @addrstr(i32* %40, i32 %43)
  %45 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %49

46:                                               ; preds = %17
  %47 = load %struct.prompt*, %struct.prompt** %4, align 8
  %48 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %37
  %50 = load %struct.filterent*, %struct.filterent** %3, align 8
  %51 = getelementptr inbounds %struct.filterent, %struct.filterent* %50, i32 0, i32 11
  %52 = call i64 @ncprange_isset(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.prompt*, %struct.prompt** %4, align 8
  %56 = load %struct.filterent*, %struct.filterent** %3, align 8
  %57 = getelementptr inbounds %struct.filterent, %struct.filterent* %56, i32 0, i32 11
  %58 = load %struct.filterent*, %struct.filterent** %3, align 8
  %59 = getelementptr inbounds %struct.filterent, %struct.filterent* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @addrstr(i32* %57, i32 %60)
  %62 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %66

63:                                               ; preds = %49
  %64 = load %struct.prompt*, %struct.prompt** %4, align 8
  %65 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %54
  %67 = load %struct.filterent*, %struct.filterent** %3, align 8
  %68 = getelementptr inbounds %struct.filterent, %struct.filterent* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %144

71:                                               ; preds = %66
  %72 = load %struct.filterent*, %struct.filterent** %3, align 8
  %73 = getelementptr inbounds %struct.filterent, %struct.filterent* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call %struct.protoent* @getprotobynumber(i32 %74)
  store %struct.protoent* %75, %struct.protoent** %5, align 8
  %76 = icmp eq %struct.protoent* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.prompt*, %struct.prompt** %4, align 8
  %79 = load %struct.filterent*, %struct.filterent** %3, align 8
  %80 = getelementptr inbounds %struct.filterent, %struct.filterent* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  br label %89

83:                                               ; preds = %71
  %84 = load %struct.prompt*, %struct.prompt** %4, align 8
  %85 = load %struct.protoent*, %struct.protoent** %5, align 8
  %86 = getelementptr inbounds %struct.protoent, %struct.protoent* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %77
  %90 = load %struct.filterent*, %struct.filterent** %3, align 8
  %91 = getelementptr inbounds %struct.filterent, %struct.filterent* %90, i32 0, i32 9
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load %struct.prompt*, %struct.prompt** %4, align 8
  %96 = load %struct.filterent*, %struct.filterent** %3, align 8
  %97 = getelementptr inbounds %struct.filterent, %struct.filterent* %96, i32 0, i32 9
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @filter_Op2Nam(i64 %98)
  %100 = load %struct.filterent*, %struct.filterent** %3, align 8
  %101 = getelementptr inbounds %struct.filterent, %struct.filterent* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %94, %89
  %105 = load %struct.filterent*, %struct.filterent** %3, align 8
  %106 = getelementptr inbounds %struct.filterent, %struct.filterent* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = load %struct.prompt*, %struct.prompt** %4, align 8
  %111 = load %struct.filterent*, %struct.filterent** %3, align 8
  %112 = getelementptr inbounds %struct.filterent, %struct.filterent* %111, i32 0, i32 7
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @filter_Op2Nam(i64 %113)
  %115 = load %struct.filterent*, %struct.filterent** %3, align 8
  %116 = getelementptr inbounds %struct.filterent, %struct.filterent* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %109, %104
  %120 = load %struct.filterent*, %struct.filterent** %3, align 8
  %121 = getelementptr inbounds %struct.filterent, %struct.filterent* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.prompt*, %struct.prompt** %4, align 8
  %126 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %119
  %128 = load %struct.filterent*, %struct.filterent** %3, align 8
  %129 = getelementptr inbounds %struct.filterent, %struct.filterent* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load %struct.prompt*, %struct.prompt** %4, align 8
  %134 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %127
  %136 = load %struct.filterent*, %struct.filterent** %3, align 8
  %137 = getelementptr inbounds %struct.filterent, %struct.filterent* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load %struct.prompt*, %struct.prompt** %4, align 8
  %142 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %135
  br label %147

144:                                              ; preds = %66
  %145 = load %struct.prompt*, %struct.prompt** %4, align 8
  %146 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %145, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %143
  %148 = load %struct.filterent*, %struct.filterent** %3, align 8
  %149 = getelementptr inbounds %struct.filterent, %struct.filterent* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load %struct.prompt*, %struct.prompt** %4, align 8
  %154 = load %struct.filterent*, %struct.filterent** %3, align 8
  %155 = getelementptr inbounds %struct.filterent, %struct.filterent* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %153, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %152, %147
  %159 = load %struct.prompt*, %struct.prompt** %4, align 8
  %160 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %11
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  %165 = load %struct.filterent*, %struct.filterent** %3, align 8
  %166 = getelementptr inbounds %struct.filterent, %struct.filterent* %165, i32 1
  store %struct.filterent* %166, %struct.filterent** %3, align 8
  br label %7

167:                                              ; preds = %7
  ret void
}

declare dso_local i32 @prompt_Printf(%struct.prompt*, i8*, ...) #1

declare dso_local i32 @filter_Action2Nam(i64) #1

declare dso_local i64 @ncprange_isset(i32*) #1

declare dso_local i32 @addrstr(i32*, i32) #1

declare dso_local %struct.protoent* @getprotobynumber(i32) #1

declare dso_local i32 @filter_Op2Nam(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
