; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_write.c_add_to_ar_sym_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_write.c_add_to_ar_sym_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i8*, i32, i32, i8*, i32, i64, i8, i64 }

@_INIT_SYMOFF_CAP = common dso_local global i8* null, align 8
@EX_SOFTWARE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@_INIT_SYMNAME_CAP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"realloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdar*, i8*)* @add_to_ar_sym_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_ar_sym_table(%struct.bsdar* %0, i8* %1) #0 {
  %3 = alloca %struct.bsdar*, align 8
  %4 = alloca i8*, align 8
  store %struct.bsdar* %0, %struct.bsdar** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %6 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load i8*, i8** @_INIT_SYMOFF_CAP, align 8
  %11 = call i8* @malloc(i8* %10)
  %12 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %13 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = icmp eq i8* %11, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %17 = load i32, i32* @EX_SOFTWARE, align 4
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @bsdar_errc(%struct.bsdar* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %9
  %21 = load i8*, i8** @_INIT_SYMOFF_CAP, align 8
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %24 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %26 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %25, i32 0, i32 2
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %29 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load i8*, i8** @_INIT_SYMNAME_CAP, align 8
  %34 = call i8* @malloc(i8* %33)
  %35 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %36 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = icmp eq i8* %34, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %40 = load i32, i32* @EX_SOFTWARE, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @bsdar_errc(%struct.bsdar* %39, i32 %40, i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %32
  %44 = load i8*, i8** @_INIT_SYMNAME_CAP, align 8
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %47 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %49 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %43, %27
  %51 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %52 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 8
  %56 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %57 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = icmp uge i64 %55, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %50
  %62 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %63 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %64, 2
  store i32 %65, i32* %63, align 8
  %66 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %67 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %70 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @realloc(i8* %68, i32 %71)
  %73 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %74 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %76 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %61
  %80 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %81 = load i32, i32* @EX_SOFTWARE, align 4
  %82 = load i32, i32* @errno, align 4
  %83 = call i32 @bsdar_errc(%struct.bsdar* %80, i32 %81, i32 %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %61
  br label %85

85:                                               ; preds = %84, %50
  %86 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %87 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %86, i32 0, i32 6
  %88 = load i8, i8* %87, align 8
  %89 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %90 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %93 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %91, i64 %95
  store i8 %88, i8* %96, align 1
  %97 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %98 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %97, i32 0, i32 6
  %99 = load i8, i8* %98, align 8
  %100 = sext i8 %99 to i64
  %101 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %102 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %101, i32 0, i32 7
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %100, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %85
  %106 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %107 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %106, i32 0, i32 6
  %108 = load i8, i8* %107, align 8
  %109 = sext i8 %108 to i64
  %110 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %111 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %110, i32 0, i32 7
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %105, %85
  %113 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %114 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %154, %112
  %118 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %119 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = call i32 @strlen(i8* %121)
  %123 = sext i32 %122 to i64
  %124 = add i64 %120, %123
  %125 = add i64 %124, 2
  %126 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %127 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = icmp ugt i64 %125, %129
  br i1 %130, label %131, label %155

131:                                              ; preds = %117
  %132 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %133 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = mul nsw i32 %134, 2
  store i32 %135, i32* %133, align 8
  %136 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %137 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %140 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = call i8* @realloc(i8* %138, i32 %141)
  %143 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %144 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %143, i32 0, i32 3
  store i8* %142, i8** %144, align 8
  %145 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %146 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %145, i32 0, i32 3
  %147 = load i8*, i8** %146, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %131
  %150 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %151 = load i32, i32* @EX_SOFTWARE, align 4
  %152 = load i32, i32* @errno, align 4
  %153 = call i32 @bsdar_errc(%struct.bsdar* %150, i32 %151, i32 %152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %154

154:                                              ; preds = %149, %131
  br label %117

155:                                              ; preds = %117
  %156 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %157 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %156, i32 0, i32 3
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %160 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  %163 = load i8*, i8** %4, align 8
  %164 = load i8*, i8** %4, align 8
  %165 = call i32 @strlen(i8* %164)
  %166 = call i32 @strncpy(i8* %162, i8* %163, i32 %165)
  %167 = load i8*, i8** %4, align 8
  %168 = call i32 @strlen(i8* %167)
  %169 = sext i32 %168 to i64
  %170 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %171 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, %169
  store i64 %173, i64* %171, align 8
  %174 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %175 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %174, i32 0, i32 3
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %178 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %178, align 8
  %181 = getelementptr inbounds i8, i8* %176, i64 %179
  store i8 0, i8* %181, align 1
  ret void
}

declare dso_local i8* @malloc(i8*) #1

declare dso_local i32 @bsdar_errc(%struct.bsdar*, i32, i32, i8*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
