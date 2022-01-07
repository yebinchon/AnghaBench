; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_util.c_printline.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_util.c_printline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsec = type { i64, i64, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@oflag = common dso_local global i64 0, align 8
@matchall = common dso_local global i64 0, align 8
@color = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\1B[%sm\1B[K\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\1B[m\1B[K\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parsec*, i32)* @printline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printline(%struct.parsec* %0, i32 %1) #0 {
  %3 = alloca %struct.parsec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  store %struct.parsec* %0, %struct.parsec** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %9 = load i64, i64* @oflag, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i64, i64* @matchall, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %162

15:                                               ; preds = %11, %2
  %16 = load %struct.parsec*, %struct.parsec** %3, align 8
  %17 = getelementptr inbounds %struct.parsec, %struct.parsec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* @oflag, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i8*, i8** @color, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %152

24:                                               ; preds = %21, %15
  %25 = load i64, i64* %7, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %152

27:                                               ; preds = %24
  %28 = load i64, i64* @oflag, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = load %struct.parsec*, %struct.parsec** %3, align 8
  %32 = getelementptr inbounds %struct.parsec, %struct.parsec* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.parsec*, %struct.parsec** %3, align 8
  %37 = getelementptr inbounds %struct.parsec, %struct.parsec* %36, i32 0, i32 2
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @printline_metadata(%struct.TYPE_5__* %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %30, %27
  store i64 0, i64* %6, align 8
  br label %41

41:                                               ; preds = %120, %40
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %123

45:                                               ; preds = %41
  %46 = load %struct.parsec*, %struct.parsec** %3, align 8
  %47 = getelementptr inbounds %struct.parsec, %struct.parsec* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %49
  %51 = bitcast %struct.TYPE_4__* %8 to i8*
  %52 = bitcast %struct.TYPE_4__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %120

59:                                               ; preds = %45
  %60 = load i64, i64* @oflag, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.parsec*, %struct.parsec** %3, align 8
  %66 = getelementptr inbounds %struct.parsec, %struct.parsec* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  %68 = load %struct.parsec*, %struct.parsec** %3, align 8
  %69 = getelementptr inbounds %struct.parsec, %struct.parsec* %68, i32 0, i32 2
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @printline_metadata(%struct.TYPE_5__* %69, i32 %70)
  br label %85

72:                                               ; preds = %59
  %73 = load %struct.parsec*, %struct.parsec** %3, align 8
  %74 = getelementptr inbounds %struct.parsec, %struct.parsec* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = add i64 %76, %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = sub i64 %80, %81
  %83 = load i32, i32* @stdout, align 4
  %84 = call i32 @fwrite(i64 %78, i64 %82, i32 1, i32 %83)
  br label %85

85:                                               ; preds = %72, %62
  %86 = load i8*, i8** @color, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* @stdout, align 4
  %90 = load i8*, i8** @color, align 8
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %88, %85
  %93 = load %struct.parsec*, %struct.parsec** %3, align 8
  %94 = getelementptr inbounds %struct.parsec, %struct.parsec* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %96, %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 %101, %103
  %105 = load i32, i32* @stdout, align 4
  %106 = call i32 @fwrite(i64 %99, i64 %104, i32 1, i32 %105)
  %107 = load i8*, i8** @color, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %92
  %110 = load i32, i32* @stdout, align 4
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %92
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %5, align 8
  %115 = load i64, i64* @oflag, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = call i32 @putchar(i8 signext 10)
  br label %119

119:                                              ; preds = %117, %112
  br label %120

120:                                              ; preds = %119, %58
  %121 = load i64, i64* %6, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %6, align 8
  br label %41

123:                                              ; preds = %41
  %124 = load i64, i64* @oflag, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %151, label %126

126:                                              ; preds = %123
  %127 = load %struct.parsec*, %struct.parsec** %3, align 8
  %128 = getelementptr inbounds %struct.parsec, %struct.parsec* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %5, align 8
  %132 = sub i64 %130, %131
  %133 = icmp ugt i64 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %126
  %135 = load %struct.parsec*, %struct.parsec** %3, align 8
  %136 = getelementptr inbounds %struct.parsec, %struct.parsec* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %5, align 8
  %140 = add i64 %138, %139
  %141 = load %struct.parsec*, %struct.parsec** %3, align 8
  %142 = getelementptr inbounds %struct.parsec, %struct.parsec* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %5, align 8
  %146 = sub i64 %144, %145
  %147 = load i32, i32* @stdout, align 4
  %148 = call i32 @fwrite(i64 %140, i64 %146, i32 1, i32 %147)
  br label %149

149:                                              ; preds = %134, %126
  %150 = call i32 @putchar(i8 signext 10)
  br label %151

151:                                              ; preds = %149, %123
  br label %157

152:                                              ; preds = %24, %21
  %153 = load %struct.parsec*, %struct.parsec** %3, align 8
  %154 = getelementptr inbounds %struct.parsec, %struct.parsec* %153, i32 0, i32 2
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @grep_printline(%struct.TYPE_5__* %154, i32 %155)
  br label %157

157:                                              ; preds = %152, %151
  %158 = load %struct.parsec*, %struct.parsec** %3, align 8
  %159 = getelementptr inbounds %struct.parsec, %struct.parsec* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %159, align 8
  br label %162

162:                                              ; preds = %157, %14
  ret void
}

declare dso_local i32 @printline_metadata(%struct.TYPE_5__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fwrite(i64, i64, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @grep_printline(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
