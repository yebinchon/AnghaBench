; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_kbd.c_kbd_process_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_kbd.c_kbd_process_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32*, i32* }

@xsize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kbd_process_keys(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %10 = load i32, i32* @xsize, align 4
  %11 = call i32 @bitstr_size(i32 %10)
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @xsize, align 4
  %29 = call i32 @bit_ffs(i32* %27, i32 %28, i32* %6)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @xsize, align 4
  %34 = call i32 @bit_ffs(i32* %32, i32 %33, i32* %7)
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %64

37:                                               ; preds = %1
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @kbd_write(i32* %43, i32 %44, i32 0, i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @uinput_kbd_write(i32* %51, i32 %52, i32 0, i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @xsize, align 4
  %61 = call i32 @bitstr_size(i32 %60)
  %62 = call i32 @memset(i32* %59, i32 0, i32 %61)
  br label %63

63:                                               ; preds = %40, %37
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %224

64:                                               ; preds = %1
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %103

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, -1
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @xsize, align 4
  %79 = call i32 @bitstr_size(i32 %78)
  %80 = call i32 @memcpy(i32* %74, i32* %77, i32 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @kbd_write(i32* %83, i32 %84, i32 1, i32 %87)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @uinput_kbd_write(i32* %91, i32 %92, i32 1, i32 %95)
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @xsize, align 4
  %101 = call i32 @bitstr_size(i32 %100)
  %102 = call i32 @memset(i32* %99, i32 0, i32 %101)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %224

103:                                              ; preds = %64
  %104 = load i32, i32* @xsize, align 4
  %105 = call i32 @bitstr_size(i32 %104)
  %106 = call i32 @memset(i32* %14, i32 0, i32 %105)
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %136, %103
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @xsize, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %139

112:                                              ; preds = %108
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i64 @bit_test(i32* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %112
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i64 @bit_test(i32* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %119
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @bit_clear(i32* %129, i32 %130)
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @bit_set(i32* %14, i32 %132)
  br label %134

134:                                              ; preds = %126, %119
  br label %135

135:                                              ; preds = %134, %112
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %108

139:                                              ; preds = %108
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %173, %139
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @xsize, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %176

145:                                              ; preds = %141
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call i64 @bit_test(i32* %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %172

152:                                              ; preds = %145
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = call i64 @bit_test(i32* %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %152
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @bit_set(i32* %162, i32 %163)
  br label %171

165:                                              ; preds = %152
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @bit_clear(i32* %168, i32 %169)
  br label %171

171:                                              ; preds = %165, %159
  br label %172

172:                                              ; preds = %171, %145
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %141

176:                                              ; preds = %141
  %177 = load i32, i32* @xsize, align 4
  %178 = call i32 @bit_ffs(i32* %14, i32 %177, i32* %7)
  %179 = load i32, i32* %7, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %176
  %182 = load i32, i32* %7, align 4
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @kbd_write(i32* %14, i32 %182, i32 0, i32 %185)
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @uinput_kbd_write(i32* %14, i32 %187, i32 0, i32 %190)
  br label %192

192:                                              ; preds = %181, %176
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* @xsize, align 4
  %197 = call i32 @bit_ffs(i32* %195, i32 %196, i32* %6)
  %198 = load i32, i32* %6, align 4
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %223

200:                                              ; preds = %192
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @kbd_write(i32* %203, i32 %204, i32 1, i32 %207)
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @uinput_kbd_write(i32* %211, i32 %212, i32 1, i32 %215)
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* @xsize, align 4
  %221 = call i32 @bitstr_size(i32 %220)
  %222 = call i32 @memset(i32* %219, i32 0, i32 %221)
  br label %223

223:                                              ; preds = %200, %192
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %224

224:                                              ; preds = %223, %67, %63
  %225 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %225)
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local i32 @bitstr_size(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bit_ffs(i32*, i32, i32*) #1

declare dso_local i32 @kbd_write(i32*, i32, i32, i32) #1

declare dso_local i32 @uinput_kbd_write(i32*, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @bit_test(i32*, i32) #1

declare dso_local i32 @bit_clear(i32*, i32) #1

declare dso_local i32 @bit_set(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
