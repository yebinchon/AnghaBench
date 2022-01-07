; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_md_malloc_move_ma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_md_malloc_move_ma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sf_buf = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@SFB_CPUPRIVATE = common dso_local global i32 0, align 4
@md_malloc_wait = common dso_local global i64 0, align 8
@SFB_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EDOOFUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"md_malloc_move_ma unknown op %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32***, i32*, i32, i8*, i32, i32)* @md_malloc_move_ma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_malloc_move_ma(i32*** %0, i32* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32***, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sf_buf*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32*** %0, i32**** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32* null, i32** %14, align 8
  store i32 0, i32* %20, align 4
  store %struct.sf_buf* null, %struct.sf_buf** %13, align 8
  store i8 0, i8* %17, align 1
  store i32 0, i32* %24, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %18, align 8
  %27 = load i32***, i32**** %7, align 8
  %28 = load i32**, i32*** %27, align 8
  store i32** %28, i32*** %15, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %22, align 4
  %31 = call i32 (...) @sched_pin()
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %19, align 4
  br label %33

33:                                               ; preds = %167, %6
  %34 = load i32, i32* %19, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %171

36:                                               ; preds = %33
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %37, %39
  %41 = load i32, i32* %19, align 4
  %42 = call i32 @imin(i32 %40, i32 %41)
  store i32 %42, i32* %23, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = load i32***, i32**** %7, align 8
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %43, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %36
  %49 = load %struct.sf_buf*, %struct.sf_buf** %13, align 8
  %50 = icmp ne %struct.sf_buf* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.sf_buf*, %struct.sf_buf** %13, align 8
  %53 = call i32 @sf_buf_free(%struct.sf_buf* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32***, i32**** %7, align 8
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %14, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = load i32, i32* @SFB_CPUPRIVATE, align 4
  %60 = load i64, i64* @md_malloc_wait, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @SFB_NOWAIT, align 4
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi i32 [ 0, %62 ], [ %64, %63 ]
  %67 = or i32 %59, %66
  %68 = call %struct.sf_buf* @sf_buf_alloc(i32* %58, i32 %67)
  store %struct.sf_buf* %68, %struct.sf_buf** %13, align 8
  %69 = load %struct.sf_buf*, %struct.sf_buf** %13, align 8
  %70 = icmp eq %struct.sf_buf* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @ENOMEM, align 4
  store i32 %72, i32* %20, align 4
  br label %171

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %36
  %75 = load %struct.sf_buf*, %struct.sf_buf** %13, align 8
  %76 = call i64 @sf_buf_kva(%struct.sf_buf* %75)
  %77 = inttoptr i64 %76 to i8*
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  store i8* %81, i8** %16, align 8
  %82 = load i32, i32* %12, align 4
  switch i32 %82, label %137 [
    i32 128, label %83
    i32 131, label %87
    i32 130, label %92
    i32 129, label %100
    i32 132, label %105
  ]

83:                                               ; preds = %74
  %84 = load i8*, i8** %16, align 8
  %85 = load i32, i32* %23, align 4
  %86 = call i32 @bzero(i8* %84, i32 %85)
  br label %142

87:                                               ; preds = %74
  %88 = load i8*, i8** %16, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %23, align 4
  %91 = call i32 @memset(i8* %88, i32 %89, i32 %90)
  br label %142

92:                                               ; preds = %74
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %16, align 8
  %95 = load i32, i32* %23, align 4
  %96 = call i32 @bcopy(i8* %93, i8* %94, i32 %95)
  %97 = load i8*, i8** %16, align 8
  %98 = load i32, i32* %23, align 4
  %99 = call i32 @cpu_flush_dcache(i8* %97, i32 %98)
  br label %142

100:                                              ; preds = %74
  %101 = load i8*, i8** %16, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load i32, i32* %23, align 4
  %104 = call i32 @bcopy(i8* %101, i8* %102, i32 %103)
  br label %142

105:                                              ; preds = %74
  store i32 0, i32* %21, align 4
  br label %106

106:                                              ; preds = %131, %105
  %107 = load i32, i32* %21, align 4
  %108 = load i32, i32* %23, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %136

110:                                              ; preds = %106
  %111 = load i32, i32* %24, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %110
  %114 = load i8*, i8** %16, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = load i32*, i32** %18, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i8*, i8** %16, align 8
  %119 = load i8, i8* %118, align 1
  store i8 %119, i8* %17, align 1
  store i32 1, i32* %24, align 4
  br label %130

120:                                              ; preds = %110
  %121 = load i8*, i8** %16, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = load i8, i8* %17, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %123, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* @EDOOFUS, align 4
  store i32 %128, i32* %20, align 4
  br label %136

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129, %113
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %21, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %21, align 4
  %134 = load i8*, i8** %16, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %16, align 8
  br label %106

136:                                              ; preds = %127, %106
  br label %142

137:                                              ; preds = %74
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  %141 = call i32 @KASSERT(i32 0, i8* %140)
  br label %142

142:                                              ; preds = %137, %136, %100, %92, %87, %83
  %143 = load i32, i32* %20, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %171

146:                                              ; preds = %142
  %147 = load i32, i32* %23, align 4
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, %147
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* @PAGE_SIZE, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %152, align 4
  %154 = srem i32 %153, %151
  store i32 %154, i32* %152, align 4
  %155 = load i32*, i32** %8, align 8
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %146
  %159 = load i32***, i32**** %7, align 8
  %160 = load i32**, i32*** %159, align 8
  %161 = getelementptr inbounds i32*, i32** %160, i32 1
  store i32** %161, i32*** %159, align 8
  br label %162

162:                                              ; preds = %158, %146
  %163 = load i8*, i8** %10, align 8
  %164 = load i32, i32* %23, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  store i8* %166, i8** %10, align 8
  br label %167

167:                                              ; preds = %162
  %168 = load i32, i32* %23, align 4
  %169 = load i32, i32* %19, align 4
  %170 = sub i32 %169, %168
  store i32 %170, i32* %19, align 4
  br label %33

171:                                              ; preds = %145, %71, %33
  %172 = load %struct.sf_buf*, %struct.sf_buf** %13, align 8
  %173 = icmp ne %struct.sf_buf* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load %struct.sf_buf*, %struct.sf_buf** %13, align 8
  %176 = call i32 @sf_buf_free(%struct.sf_buf* %175)
  br label %177

177:                                              ; preds = %174, %171
  %178 = call i32 (...) @sched_unpin()
  %179 = load i32, i32* %12, align 4
  %180 = icmp eq i32 %179, 132
  br i1 %180, label %181, label %189

181:                                              ; preds = %177
  %182 = load i32, i32* %20, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %181
  %185 = load i32**, i32*** %15, align 8
  %186 = load i32***, i32**** %7, align 8
  store i32** %185, i32*** %186, align 8
  %187 = load i32, i32* %22, align 4
  %188 = load i32*, i32** %8, align 8
  store i32 %187, i32* %188, align 4
  br label %189

189:                                              ; preds = %184, %181, %177
  %190 = load i32, i32* %20, align 4
  ret i32 %190
}

declare dso_local i32 @sched_pin(...) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @sf_buf_free(%struct.sf_buf*) #1

declare dso_local %struct.sf_buf* @sf_buf_alloc(i32*, i32) #1

declare dso_local i64 @sf_buf_kva(%struct.sf_buf*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @cpu_flush_dcache(i8*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sched_unpin(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
