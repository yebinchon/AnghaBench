; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_font.c_vtfont_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_font.c_vtfont_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32, i32* }
%struct.vt_font = type { i64, i32, i32, i32*, i8*, i8** }

@EINVAL = common dso_local global i32 0, align 4
@VTFONT_MAXDIMENSION = common dso_local global i32 0, align 4
@VTFONT_MAXGLYPHS = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@VFNT_MAPS = common dso_local global i32 0, align 4
@VTFONT_MAXMAPPINGS = common dso_local global i32 0, align 4
@VTFONT_MAXGLYPHSIZE = common dso_local global i64 0, align 8
@M_VTFONT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vtfont_load(%struct.TYPE_3__* %0, %struct.vt_font** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.vt_font**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vt_font*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.vt_font** %1, %struct.vt_font*** %5, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %228

22:                                               ; preds = %15
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @VTFONT_MAXDIMENSION, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VTFONT_MAXDIMENSION, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @VTFONT_MAXGLYPHS, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %28, %22
  %41 = load i32, i32* @E2BIG, align 4
  store i32 %41, i32* %3, align 4
  br label %228

42:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %60, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @VFNT_MAPS, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @VTFONT_MAXMAPPINGS, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @E2BIG, align 4
  store i32 %58, i32* %3, align 4
  br label %228

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %3, align 4
  br label %228

70:                                               ; preds = %63
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @howmany(i32 %73, i32 8)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %74, %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = mul i64 %79, %83
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @VTFONT_MAXGLYPHSIZE, align 8
  %87 = icmp ugt i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %70
  %89 = load i32, i32* @E2BIG, align 4
  store i32 %89, i32* %3, align 4
  br label %228

90:                                               ; preds = %70
  %91 = load i32, i32* @M_VTFONT, align 4
  %92 = load i32, i32* @M_WAITOK, align 4
  %93 = load i32, i32* @M_ZERO, align 4
  %94 = or i32 %92, %93
  %95 = call i8* @malloc(i64 40, i32 %91, i32 %94)
  %96 = bitcast i8* %95 to %struct.vt_font*
  store %struct.vt_font* %96, %struct.vt_font** %8, align 8
  %97 = load i64, i64* %6, align 8
  %98 = load i32, i32* @M_VTFONT, align 4
  %99 = load i32, i32* @M_WAITOK, align 4
  %100 = call i8* @malloc(i64 %97, i32 %98, i32 %99)
  %101 = load %struct.vt_font*, %struct.vt_font** %8, align 8
  %102 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.vt_font*, %struct.vt_font** %8, align 8
  %108 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.vt_font*, %struct.vt_font** %8, align 8
  %113 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load %struct.vt_font*, %struct.vt_font** %8, align 8
  %115 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %114, i32 0, i32 2
  store i32 1, i32* %115, align 4
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %206, %90
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @VFNT_MAPS, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %209

120:                                              ; preds = %116
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.vt_font*, %struct.vt_font** %8, align 8
  %129 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %127, i32* %133, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %120
  br label %206

143:                                              ; preds = %120
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = mul i64 %151, 4
  store i64 %152, i64* %7, align 8
  %153 = load i64, i64* %7, align 8
  %154 = load i32, i32* @M_VTFONT, align 4
  %155 = load i32, i32* @M_WAITOK, align 4
  %156 = call i8* @malloc(i64 %153, i32 %154, i32 %155)
  %157 = load %struct.vt_font*, %struct.vt_font** %8, align 8
  %158 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %157, i32 0, i32 5
  %159 = load i8**, i8*** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  store i8* %156, i8** %162, align 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 5
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.vt_font*, %struct.vt_font** %8, align 8
  %171 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %170, i32 0, i32 5
  %172 = load i8**, i8*** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = load i64, i64* %7, align 8
  %178 = call i32 @copyin(i32 %169, i8* %176, i64 %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %143
  br label %224

182:                                              ; preds = %143
  %183 = load %struct.vt_font*, %struct.vt_font** %8, align 8
  %184 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %183, i32 0, i32 5
  %185 = load i8**, i8*** %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.vt_font*, %struct.vt_font** %8, align 8
  %191 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %10, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = call i32 @vtfont_validate_map(i8* %189, i32 %196, i64 %200)
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %182
  br label %224

205:                                              ; preds = %182
  br label %206

206:                                              ; preds = %205, %142
  %207 = load i32, i32* %10, align 4
  %208 = add i32 %207, 1
  store i32 %208, i32* %10, align 4
  br label %116

209:                                              ; preds = %116
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.vt_font*, %struct.vt_font** %8, align 8
  %214 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %213, i32 0, i32 4
  %215 = load i8*, i8** %214, align 8
  %216 = load i64, i64* %6, align 8
  %217 = call i32 @copyin(i32 %212, i8* %215, i64 %216)
  store i32 %217, i32* %9, align 4
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %209
  br label %224

221:                                              ; preds = %209
  %222 = load %struct.vt_font*, %struct.vt_font** %8, align 8
  %223 = load %struct.vt_font**, %struct.vt_font*** %5, align 8
  store %struct.vt_font* %222, %struct.vt_font** %223, align 8
  store i32 0, i32* %3, align 4
  br label %228

224:                                              ; preds = %220, %204, %181
  %225 = load %struct.vt_font*, %struct.vt_font** %8, align 8
  %226 = call i32 @vtfont_unref(%struct.vt_font* %225)
  %227 = load i32, i32* %9, align 4
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %224, %221, %88, %68, %57, %40, %20
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i64 @howmany(i32, i32) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @copyin(i32, i8*, i64) #1

declare dso_local i32 @vtfont_validate_map(i8*, i32, i64) #1

declare dso_local i32 @vtfont_unref(%struct.vt_font*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
