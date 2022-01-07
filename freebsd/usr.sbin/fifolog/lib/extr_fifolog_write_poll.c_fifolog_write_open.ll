; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_write_poll.c_fifolog_write_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_write_poll.c_fifolog_write_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fifolog_writer = type { i32, i32, i32, i64, i32, i32, i8*, i8*, i8*, %struct.TYPE_5__*, i64, i32, i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i64 }

@FIFOLOG_WRITER_MAGIC = common dso_local global i32 0, align 4
@Z_BEST_COMPRESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Illegal compression value\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Read error, looking for seq\00", align 1
@Z_OK = common dso_local global i32 0, align 4
@FIFOLOG_FLG_RESTART = common dso_local global i32 0, align 4
@FIFOLOG_FLG_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fifolog_write_open(%struct.fifolog_writer* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fifolog_writer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.fifolog_writer* %0, %struct.fifolog_writer** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %17 = load i32, i32* @FIFOLOG_WRITER_MAGIC, align 4
  %18 = call i32 @CHECK_OBJ_NOTNULL(%struct.fifolog_writer* %16, i32 %17)
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @Z_BEST_COMPRESSION, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %173

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %26 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %29 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %32 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %34 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %33, i32 0, i32 15
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @memset(i32 %35, i32 0, i32 4)
  %37 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %38 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %37, i32 0, i32 9
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @fifolog_int_open(%struct.TYPE_5__** %38, i8* %39, i32 1)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %23
  %44 = load i8*, i8** %12, align 8
  store i8* %44, i8** %6, align 8
  br label %173

45:                                               ; preds = %23
  %46 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %47 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %46, i32 0, i32 9
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call i8* @fifolog_int_findend(%struct.TYPE_5__* %48, i64* %15)
  store i8* %49, i8** %12, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i8*, i8** %12, align 8
  store i8* %53, i8** %6, align 8
  br label %173

54:                                               ; preds = %45
  %55 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %56 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %55, i32 0, i32 9
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i64, i64* %15, align 8
  %59 = call i32 @fifolog_int_read(%struct.TYPE_5__* %57, i64 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %173

63:                                               ; preds = %54
  %64 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %65 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %64, i32 0, i32 9
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @be32dec(i32 %68)
  %70 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %71 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %73 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %63
  %77 = call i64 (...) @random()
  %78 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %79 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  br label %89

80:                                               ; preds = %63
  %81 = load i64, i64* %15, align 8
  %82 = add nsw i64 %81, 1
  %83 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %84 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %83, i32 0, i32 14
  store i64 %82, i64* %84, align 8
  %85 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %86 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %80, %76
  %90 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %91 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %90, i32 0, i32 9
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %96 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %98 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %97, i32 0, i32 10
  %99 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %100 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @ALLOC(i64* %98, i32 %101)
  %103 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %104 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %105, 10
  %107 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %108 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %110 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %109, i32 0, i32 13
  %111 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %112 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ALLOC(i64* %110, i32 %113)
  %115 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %116 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %115, i32 0, i32 12
  store i64 0, i64* %116, align 8
  %117 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %118 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %117, i32 0, i32 9
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %123 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @deflateInit(%struct.TYPE_6__* %121, i32 %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @Z_OK, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i32, i32* @FIFOLOG_FLG_RESTART, align 4
  %132 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %133 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %132, i32 0, i32 11
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* @FIFOLOG_FLG_SYNC, align 4
  %137 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %138 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %137, i32 0, i32 11
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %142 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %141, i32 0, i32 10
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, 9
  %145 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %146 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %145, i32 0, i32 9
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  store i64 %144, i64* %150, align 8
  %151 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %152 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = sub nsw i32 %153, 9
  %155 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %156 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %155, i32 0, i32 9
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  store i32 %154, i32* %160, align 8
  %161 = call i32 @time(i8** %14)
  %162 = load i8*, i8** %14, align 8
  %163 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %164 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %163, i32 0, i32 8
  store i8* %162, i8** %164, align 8
  %165 = load i8*, i8** %14, align 8
  %166 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %167 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %166, i32 0, i32 7
  store i8* %165, i8** %167, align 8
  %168 = load i8*, i8** %14, align 8
  %169 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %170 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %169, i32 0, i32 6
  store i8* %168, i8** %170, align 8
  %171 = load %struct.fifolog_writer*, %struct.fifolog_writer** %7, align 8
  %172 = call i32 @fifolog_write_assert(%struct.fifolog_writer* %171)
  store i8* null, i8** %6, align 8
  br label %173

173:                                              ; preds = %89, %62, %52, %43, %22
  %174 = load i8*, i8** %6, align 8
  ret i8* %174
}

declare dso_local i32 @CHECK_OBJ_NOTNULL(%struct.fifolog_writer*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8* @fifolog_int_open(%struct.TYPE_5__**, i8*, i32) #1

declare dso_local i8* @fifolog_int_findend(%struct.TYPE_5__*, i64*) #1

declare dso_local i32 @fifolog_int_read(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @be32dec(i32) #1

declare dso_local i64 @random(...) #1

declare dso_local i32 @ALLOC(i64*, i32) #1

declare dso_local i32 @deflateInit(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @time(i8**) #1

declare dso_local i32 @fifolog_write_assert(%struct.fifolog_writer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
