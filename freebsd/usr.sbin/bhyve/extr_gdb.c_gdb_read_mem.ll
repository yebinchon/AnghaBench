; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_gdb_read_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_gdb_read_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@cur_vcpu = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @gdb_read_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdb_read_mem(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32* %15, i32** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = sub i64 %16, 1
  store i64 %17, i64* %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32* @memchr(i32* %18, i8 signext 44, i64 %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = icmp eq i32* %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = call i32 @send_error(i32 %28)
  br label %228

30:                                               ; preds = %23
  %31 = load i32*, i32** %3, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = ptrtoint i32* %32 to i64
  %35 = ptrtoint i32* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 4
  %38 = call i8* @parse_integer(i32* %31, i64 %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = ptrtoint i32* %40 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  %46 = add nsw i64 %45, 1
  %47 = load i64, i64* %4, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %4, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = ptrtoint i32* %49 to i64
  %52 = ptrtoint i32* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 4
  %55 = add nsw i64 %54, 1
  %56 = load i32*, i32** %3, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 %55
  store i32* %57, i32** %3, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i8* @parse_integer(i32* %58, i64 %59)
  %61 = ptrtoint i8* %60 to i64
  store i64 %61, i64* %9, align 8
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %217, %30
  %63 = load i64, i64* %9, align 8
  %64 = icmp ugt i64 %63, 0
  br i1 %64, label %65, label %221

65:                                               ; preds = %62
  %66 = load i32, i32* @cur_vcpu, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @guest_vaddr2paddr(i32 %66, i32 %67, i32* %5)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 (...) @finish_packet()
  br label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @errno, align 4
  %78 = call i32 @send_error(i32 %77)
  br label %79

79:                                               ; preds = %76, %74
  br label %228

80:                                               ; preds = %65
  %81 = load i32, i32* %13, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 (...) @finish_packet()
  br label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @EFAULT, align 4
  %90 = call i32 @send_error(i32 %89)
  br label %91

91:                                               ; preds = %88, %86
  br label %228

92:                                               ; preds = %80
  %93 = call i32 (...) @getpagesize()
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (...) @getpagesize()
  %96 = srem i32 %94, %95
  %97 = sub nsw i32 %93, %96
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %10, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp ugt i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i64, i64* %9, align 8
  store i64 %103, i64* %10, align 8
  br label %104

104:                                              ; preds = %102, %92
  %105 = load i32, i32* @ctx, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i64, i64* %10, align 8
  %108 = call i32* @paddr_guest2host(i32 %105, i32 %106, i64 %107)
  store i32* %108, i32** %8, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %135

111:                                              ; preds = %104
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = call i32 (...) @start_packet()
  store i32 1, i32* %12, align 4
  br label %116

116:                                              ; preds = %114, %111
  br label %117

117:                                              ; preds = %120, %116
  %118 = load i64, i64* %10, align 8
  %119 = icmp ugt i64 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @append_byte(i32 %122)
  %124 = load i32*, i32** %8, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %8, align 8
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  %130 = load i64, i64* %9, align 8
  %131 = add i64 %130, -1
  store i64 %131, i64* %9, align 8
  %132 = load i64, i64* %10, align 8
  %133 = add i64 %132, -1
  store i64 %133, i64* %10, align 8
  br label %117

134:                                              ; preds = %117
  br label %209

135:                                              ; preds = %104
  br label %136

136:                                              ; preds = %207, %135
  %137 = load i64, i64* %10, align 8
  %138 = icmp ugt i64 %137, 0
  br i1 %138, label %139, label %208

139:                                              ; preds = %136
  %140 = load i32, i32* %5, align 4
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = load i64, i64* %10, align 8
  %145 = icmp eq i64 %144, 1
  br i1 %145, label %146, label %147

146:                                              ; preds = %143, %139
  store i64 1, i64* %11, align 8
  br label %157

147:                                              ; preds = %143
  %148 = load i32, i32* %5, align 4
  %149 = and i32 %148, 2
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = load i64, i64* %10, align 8
  %153 = icmp eq i64 %152, 2
  br i1 %153, label %154, label %155

154:                                              ; preds = %151, %147
  store i64 2, i64* %11, align 8
  br label %156

155:                                              ; preds = %151
  store i64 4, i64* %11, align 8
  br label %156

156:                                              ; preds = %155, %154
  br label %157

157:                                              ; preds = %156, %146
  %158 = load i32, i32* @ctx, align 4
  %159 = load i32, i32* @cur_vcpu, align 4
  %160 = load i32, i32* %5, align 4
  %161 = load i64, i64* %11, align 8
  %162 = call i32 @read_mem(i32 %158, i32 %159, i32 %160, i32* %7, i64 %161)
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* %13, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %198

165:                                              ; preds = %157
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %165
  %169 = call i32 (...) @start_packet()
  store i32 1, i32* %12, align 4
  br label %170

170:                                              ; preds = %168, %165
  %171 = load i64, i64* %11, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = add i64 %173, %171
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %5, align 4
  %176 = load i64, i64* %11, align 8
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = add i64 %178, %176
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %6, align 4
  %181 = load i64, i64* %11, align 8
  %182 = load i64, i64* %9, align 8
  %183 = sub i64 %182, %181
  store i64 %183, i64* %9, align 8
  %184 = load i64, i64* %11, align 8
  %185 = load i64, i64* %10, align 8
  %186 = sub i64 %185, %184
  store i64 %186, i64* %10, align 8
  br label %187

187:                                              ; preds = %190, %170
  %188 = load i64, i64* %11, align 8
  %189 = icmp ugt i64 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @append_byte(i32 %191)
  %193 = load i32, i32* %7, align 4
  %194 = ashr i32 %193, 8
  store i32 %194, i32* %7, align 4
  %195 = load i64, i64* %11, align 8
  %196 = add i64 %195, -1
  store i64 %196, i64* %11, align 8
  br label %187

197:                                              ; preds = %187
  br label %207

198:                                              ; preds = %157
  %199 = load i32, i32* %12, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %198
  %202 = call i32 (...) @finish_packet()
  br label %206

203:                                              ; preds = %198
  %204 = load i32, i32* @EFAULT, align 4
  %205 = call i32 @send_error(i32 %204)
  br label %206

206:                                              ; preds = %203, %201
  br label %228

207:                                              ; preds = %197
  br label %136

208:                                              ; preds = %136
  br label %209

209:                                              ; preds = %208, %134
  %210 = load i64, i64* %9, align 8
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %209
  %213 = load i32, i32* %5, align 4
  %214 = call i32 (...) @getpagesize()
  %215 = srem i32 %213, %214
  %216 = icmp eq i32 %215, 0
  br label %217

217:                                              ; preds = %212, %209
  %218 = phi i1 [ true, %209 ], [ %216, %212 ]
  %219 = zext i1 %218 to i32
  %220 = call i32 @assert(i32 %219)
  br label %62

221:                                              ; preds = %62
  %222 = load i32, i32* %12, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %221
  %225 = call i32 (...) @start_packet()
  br label %226

226:                                              ; preds = %224, %221
  %227 = call i32 (...) @finish_packet()
  br label %228

228:                                              ; preds = %226, %206, %91, %79, %27
  ret void
}

declare dso_local i32* @memchr(i32*, i8 signext, i64) #1

declare dso_local i32 @send_error(i32) #1

declare dso_local i8* @parse_integer(i32*, i64) #1

declare dso_local i32 @guest_vaddr2paddr(i32, i32, i32*) #1

declare dso_local i32 @finish_packet(...) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32* @paddr_guest2host(i32, i32, i64) #1

declare dso_local i32 @start_packet(...) #1

declare dso_local i32 @append_byte(i32) #1

declare dso_local i32 @read_mem(i32, i32, i32, i32*, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
