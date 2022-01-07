; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ldd/extr_sods.c_dump_rels.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ldd/extr_sods.c_dump_rels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.relocation_info = type { i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"  %s:\0A\00", align 1
@origin = common dso_local global i64 0, align 8
@ex = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"      [%02x]\00", align 1
@text_addr = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"    [%04x]\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"[%08lx]\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"    %6lu %8x/%u %s %c%c%c%c%c%c\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" %4u %s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.relocation_info*, i64, i8* (i64)*, i8*)* @dump_rels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_rels(i8* %0, %struct.relocation_info* %1, i64 %2, i8* (i64)* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.relocation_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8* (i64)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.relocation_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [16 x i8], align 16
  store i8* %0, i8** %6, align 8
  store %struct.relocation_info* %1, %struct.relocation_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* (i64)* %3, i8* (i64)** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i64 0, i64* %11, align 8
  br label %17

17:                                               ; preds = %174, %5
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %177

21:                                               ; preds = %17
  %22 = load %struct.relocation_info*, %struct.relocation_info** %7, align 8
  %23 = load i64, i64* %11, align 8
  %24 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %22, i64 %23
  store %struct.relocation_info* %24, %struct.relocation_info** %12, align 8
  %25 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %26 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 1, %27
  store i32 %28, i32* %13, align 4
  %29 = load i64, i64* @origin, align 8
  %30 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %31 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %30, i32 0, i32 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ule i64 %29, %32
  br i1 %33, label %34, label %91

34:                                               ; preds = %21
  %35 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %36 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %35, i32 0, i32 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @origin, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ex, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %38, %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ex, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %42, %45
  %47 = icmp ult i64 %37, %46
  br i1 %47, label %48, label %91

48:                                               ; preds = %34
  %49 = load i32, i32* %13, align 4
  %50 = icmp ule i32 1, %49
  br i1 %50, label %51, label %91

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = icmp ule i32 %52, 4
  br i1 %53, label %54, label %91

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  switch i32 %55, label %90 [
    i32 1, label %56
    i32 2, label %67
    i32 4, label %79
  ]

56:                                               ; preds = %54
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %58 = load i64, i64* @text_addr, align 8
  %59 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %60 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %59, i32 0, i32 8
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = inttoptr i64 %62 to i8*
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %57, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %90

67:                                               ; preds = %54
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %69 = load i64, i64* @text_addr, align 8
  %70 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %71 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %70, i32 0, i32 8
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = call i64 @align_short(i64 %73)
  %75 = inttoptr i64 %74 to i16*
  %76 = load i16, i16* %75, align 2
  %77 = zext i16 %76 to i32
  %78 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %68, i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %90

79:                                               ; preds = %54
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %81 = load i64, i64* @text_addr, align 8
  %82 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %83 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %82, i32 0, i32 8
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = call i64 @align_long(i64 %85)
  %87 = inttoptr i64 %86 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %80, i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %54, %79, %67, %56
  br label %94

91:                                               ; preds = %51, %48, %34, %21
  %92 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %93 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %92, i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %90
  %95 = load i64, i64* %11, align 8
  %96 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %97 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %96, i32 0, i32 8
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %101 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %102 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 101, i32 45
  %107 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %108 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 106, i32 45
  %113 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %114 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 114, i32 45
  %119 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %120 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 98, i32 45
  %125 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %126 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 112, i32 45
  %131 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %132 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 99, i32 45
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %95, i64 %98, i32 %99, i8* %100, i32 %106, i32 %112, i32 %118, i32 %124, i32 %130, i32 %136)
  %138 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %139 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %157, label %142

142:                                              ; preds = %94
  %143 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %144 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %142
  %148 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %149 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %154 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %152, %147, %142, %94
  %158 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %159 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i8* (i64)*, i8* (i64)** %9, align 8
  %162 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %163 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = call i8* %161(i64 %164)
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 %160, i8* %165)
  %167 = load i8*, i8** %10, align 8
  %168 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %169 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  store i8 1, i8* %171, align 1
  br label %172

172:                                              ; preds = %157, %152
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172
  %175 = load i64, i64* %11, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %11, align 8
  br label %17

177:                                              ; preds = %17
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @align_short(i64) #1

declare dso_local i64 @align_long(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
