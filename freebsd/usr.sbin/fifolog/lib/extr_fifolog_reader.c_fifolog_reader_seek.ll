; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_reader.c_fifolog_reader_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_reader.c_fifolog_reader_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fifolog_reader = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32, i32 }

@FIFOLOG_READER_MAGIC = common dso_local global i32 0, align 4
@FIFOLOG_FLG_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Read from %jx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fifolog_reader_seek(%struct.fifolog_reader* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fifolog_reader*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.fifolog_reader* %0, %struct.fifolog_reader** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %16 = load i32, i32* @FIFOLOG_READER_MAGIC, align 4
  %17 = call i32 @CHECK_OBJ_NOTNULL(%struct.fifolog_reader* %15, i32 %16)
  store i32 0, i32* %6, align 4
  %18 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %19 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @fifolog_reader_findsync(%struct.TYPE_4__* %20, i32* %6)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %196

25:                                               ; preds = %2
  %26 = load i32, i32* %14, align 4
  %27 = icmp eq i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %31 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FIFOLOG_FLG_SYNC, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %41 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i8* @be32dec(i32* %44)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %11, align 4
  %47 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %48 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  %53 = call i8* @be32dec(i32* %52)
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = icmp ugt i8* %54, %55
  br i1 %56, label %57, label %97

57:                                               ; preds = %25
  %58 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %59 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i8* @fifolog_int_findend(%struct.TYPE_4__* %60, i32* %7)
  store i8* %61, i8** %13, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %64, %57
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %71 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = call i32 @fifolog_reader_findsync(%struct.TYPE_4__* %72, i32* %7)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %196

77:                                               ; preds = %67
  %78 = load i32, i32* %14, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %96

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %6, align 4
  %82 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %83 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i8* @be32dec(i32* %86)
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %11, align 4
  %89 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %90 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 5
  %95 = call i8* @be32dec(i32* %94)
  store i8* %95, i8** %9, align 8
  br label %96

96:                                               ; preds = %80, %77
  br label %97

97:                                               ; preds = %96, %25
  %98 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %99 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sub nsw i32 %102, %103
  %105 = sdiv i32 %104, 2
  store i32 %105, i32* %8, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %180, %177, %163, %149, %133, %120, %97
  %107 = load i32, i32* %7, align 4
  %108 = icmp sgt i32 %107, 1
  br i1 %108, label %109, label %185

109:                                              ; preds = %106
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %110, %111
  %113 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %114 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  %119 = icmp sgt i32 %112, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %109
  %121 = load i32, i32* %7, align 4
  %122 = sdiv i32 %121, 2
  store i32 %122, i32* %8, align 4
  store i32 %122, i32* %7, align 4
  br label %106

123:                                              ; preds = %109
  %124 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %125 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %127, %128
  %130 = call i32 @fifolog_int_read(%struct.TYPE_4__* %126, i32 %129)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load i32, i32* %7, align 4
  %135 = sdiv i32 %134, 2
  store i32 %135, i32* %8, align 4
  store i32 %135, i32* %7, align 4
  br label %106

136:                                              ; preds = %123
  %137 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %138 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = call i8* @be32dec(i32* %141)
  %143 = ptrtoint i8* %142 to i32
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %8, align 4
  %147 = add i32 %145, %146
  %148 = icmp ne i32 %144, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %136
  %150 = load i32, i32* %7, align 4
  %151 = sdiv i32 %150, 2
  store i32 %151, i32* %8, align 4
  store i32 %151, i32* %7, align 4
  br label %106

152:                                              ; preds = %136
  %153 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %154 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 4
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @FIFOLOG_FLG_SYNC, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %152
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %106

166:                                              ; preds = %152
  %167 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %168 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %167, i32 0, i32 0
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 5
  %173 = call i8* @be32dec(i32* %172)
  store i8* %173, i8** %10, align 8
  %174 = load i8*, i8** %10, align 8
  %175 = load i8*, i8** %5, align 8
  %176 = icmp uge i8* %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %166
  %178 = load i32, i32* %7, align 4
  %179 = sdiv i32 %178, 2
  store i32 %179, i32* %8, align 4
  store i32 %179, i32* %7, align 4
  br label %106

180:                                              ; preds = %166
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %12, align 4
  store i32 %184, i32* %11, align 4
  br label %106

185:                                              ; preds = %106
  %186 = load i32, i32* @stderr, align 4
  %187 = load i32, i32* %6, align 4
  %188 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %189 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %188, i32 0, i32 0
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %187, %192
  %194 = call i32 @fprintf(i32 %186, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %185, %76, %24
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @CHECK_OBJ_NOTNULL(%struct.fifolog_reader*, i32) #1

declare dso_local i32 @fifolog_reader_findsync(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @be32dec(i32*) #1

declare dso_local i8* @fifolog_int_findend(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @fifolog_int_read(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
