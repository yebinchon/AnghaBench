; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_slice.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@KTR_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"sglist_slice: foffs = %08lx\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"sglist_slice: loffs = %08lx\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"sglist_slice seg[0]: %08lx:%08lx\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"sglist_slice seg[%d]: len %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sglist_slice(%struct.sglist* %0, %struct.sglist** %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sglist*, align 8
  %8 = alloca %struct.sglist**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sglist*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sglist* %0, %struct.sglist** %7, align 8
  store %struct.sglist** %1, %struct.sglist*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %205

23:                                               ; preds = %5
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = add i64 %24, %25
  store i64 %26, i64* %14, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %18, align 4
  br label %27

27:                                               ; preds = %82, %23
  %28 = load i32, i32* %18, align 4
  %29 = load %struct.sglist*, %struct.sglist** %7, align 8
  %30 = getelementptr inbounds %struct.sglist, %struct.sglist* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %85

33:                                               ; preds = %27
  %34 = load %struct.sglist*, %struct.sglist** %7, align 8
  %35 = getelementptr inbounds %struct.sglist, %struct.sglist* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %18, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %13, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %33
  %48 = load i32, i32* %17, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load i32, i32* %18, align 4
  store i32 %51, i32* %19, align 4
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load %struct.sglist*, %struct.sglist** %7, align 8
  %55 = getelementptr inbounds %struct.sglist, %struct.sglist* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %53, %61
  %63 = sub i64 %52, %62
  store i64 %63, i64* %15, align 8
  %64 = load i32, i32* @KTR_DEV, align 4
  %65 = load i64, i64* %15, align 8
  %66 = call i32 @CTR1(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %65)
  br label %67

67:                                               ; preds = %50, %47
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %17, align 4
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp uge i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %14, align 8
  %76 = sub i64 %74, %75
  store i64 %76, i64* %16, align 8
  %77 = load i32, i32* @KTR_DEV, align 4
  %78 = load i64, i64* %16, align 8
  %79 = call i32 @CTR1(i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  br label %85

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %33
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %18, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %18, align 4
  br label %27

85:                                               ; preds = %73, %27
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* %14, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %6, align 4
  br label %205

91:                                               ; preds = %85
  %92 = load %struct.sglist**, %struct.sglist*** %8, align 8
  %93 = load %struct.sglist*, %struct.sglist** %92, align 8
  %94 = icmp eq %struct.sglist* %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call %struct.sglist* @sglist_alloc(i32 %96, i32 %97)
  store %struct.sglist* %98, %struct.sglist** %12, align 8
  %99 = load %struct.sglist*, %struct.sglist** %12, align 8
  %100 = icmp eq %struct.sglist* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @ENOMEM, align 4
  store i32 %102, i32* %6, align 4
  br label %205

103:                                              ; preds = %95
  %104 = load %struct.sglist*, %struct.sglist** %12, align 8
  %105 = load %struct.sglist**, %struct.sglist*** %8, align 8
  store %struct.sglist* %104, %struct.sglist** %105, align 8
  br label %124

106:                                              ; preds = %91
  %107 = load %struct.sglist**, %struct.sglist*** %8, align 8
  %108 = load %struct.sglist*, %struct.sglist** %107, align 8
  store %struct.sglist* %108, %struct.sglist** %12, align 8
  %109 = load %struct.sglist*, %struct.sglist** %12, align 8
  %110 = getelementptr inbounds %struct.sglist, %struct.sglist* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i32, i32* @EFBIG, align 4
  store i32 %115, i32* %6, align 4
  br label %205

116:                                              ; preds = %106
  %117 = load %struct.sglist*, %struct.sglist** %12, align 8
  %118 = getelementptr inbounds %struct.sglist, %struct.sglist* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* @EINVAL, align 4
  store i32 %122, i32* %6, align 4
  br label %205

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123, %103
  %125 = load %struct.sglist*, %struct.sglist** %7, align 8
  %126 = getelementptr inbounds %struct.sglist, %struct.sglist* %125, i32 0, i32 2
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %129
  %131 = load %struct.sglist*, %struct.sglist** %12, align 8
  %132 = getelementptr inbounds %struct.sglist, %struct.sglist* %131, i32 0, i32 2
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 4
  %137 = trunc i64 %136 to i32
  %138 = call i32 @bcopy(%struct.TYPE_3__* %130, %struct.TYPE_3__* %133, i32 %137)
  %139 = load i32, i32* %17, align 4
  %140 = load %struct.sglist*, %struct.sglist** %12, align 8
  %141 = getelementptr inbounds %struct.sglist, %struct.sglist* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i64, i64* %15, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %176

144:                                              ; preds = %124
  %145 = load i64, i64* %15, align 8
  %146 = load %struct.sglist*, %struct.sglist** %12, align 8
  %147 = getelementptr inbounds %struct.sglist, %struct.sglist* %146, i32 0, i32 2
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %151, %145
  store i64 %152, i64* %150, align 8
  %153 = load i64, i64* %15, align 8
  %154 = load %struct.sglist*, %struct.sglist** %12, align 8
  %155 = getelementptr inbounds %struct.sglist, %struct.sglist* %154, i32 0, i32 2
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = sub i64 %159, %153
  store i64 %160, i64* %158, align 8
  %161 = load i32, i32* @KTR_DEV, align 4
  %162 = load %struct.sglist*, %struct.sglist** %12, align 8
  %163 = getelementptr inbounds %struct.sglist, %struct.sglist* %162, i32 0, i32 2
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = trunc i64 %167 to i32
  %169 = load %struct.sglist*, %struct.sglist** %12, align 8
  %170 = getelementptr inbounds %struct.sglist, %struct.sglist* %169, i32 0, i32 2
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @CTR2(i32 %161, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %168, i64 %174)
  br label %176

176:                                              ; preds = %144, %124
  %177 = load i64, i64* %16, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %204

179:                                              ; preds = %176
  %180 = load i64, i64* %16, align 8
  %181 = load %struct.sglist*, %struct.sglist** %12, align 8
  %182 = getelementptr inbounds %struct.sglist, %struct.sglist* %181, i32 0, i32 2
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %182, align 8
  %184 = load i32, i32* %17, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = sub i64 %189, %180
  store i64 %190, i64* %188, align 8
  %191 = load i32, i32* @KTR_DEV, align 4
  %192 = load i32, i32* %17, align 4
  %193 = sub nsw i32 %192, 1
  %194 = load %struct.sglist*, %struct.sglist** %12, align 8
  %195 = getelementptr inbounds %struct.sglist, %struct.sglist* %194, i32 0, i32 2
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %195, align 8
  %197 = load i32, i32* %17, align 4
  %198 = sub nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @CTR2(i32 %191, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %193, i64 %202)
  br label %204

204:                                              ; preds = %179, %176
  store i32 0, i32* %6, align 4
  br label %205

205:                                              ; preds = %204, %121, %114, %101, %89, %22
  %206 = load i32, i32* %6, align 4
  ret i32 %206
}

declare dso_local i32 @CTR1(i32, i8*, i64) #1

declare dso_local %struct.sglist* @sglist_alloc(i32, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_3__*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @CTR2(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
