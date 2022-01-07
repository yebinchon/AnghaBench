; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_grab_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_grab_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_ALLOC_SBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_IGN_SBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"vm_page_grab_valid: VM_ALLOC_SBUSY/VM_ALLOC_IGN_SBUSY mismatch\00", align 1
@VM_ALLOC_NOWAIT = common dso_local global i32 0, align 4
@VM_ALLOC_WAITFAIL = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"vm_page_grab_valid: Invalid flags 0x%X\00", align 1
@VM_ALLOC_NOBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_NOCREAT = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"pgrbwt\00", align 1
@VM_PAGER_FAIL = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_PAGER_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_page_grab_valid(i32** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @VM_ALLOC_SBUSY, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @VM_ALLOC_IGN_SBUSY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %19, %4
  %25 = phi i1 [ true, %4 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @VM_ALLOC_NOWAIT, align 4
  %30 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %28, %33
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @KASSERT(i32 %36, i8* %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @VM_OBJECT_ASSERT_WLOCKED(i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %45 = load i32, i32* @VM_ALLOC_SBUSY, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %43, %47
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %152, %92, %24
  store i32 0, i32* %12, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32* @vm_page_lookup(i32 %53, i32 %54)
  store i32* %55, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %137

57:                                               ; preds = %52
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @vm_page_all_valid(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @VM_ALLOC_IGN_SBUSY, align 4
  %64 = load i32, i32* @VM_ALLOC_SBUSY, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61, %57
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @vm_page_tryxbusy(i32* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %80

74:                                               ; preds = %61
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @vm_page_trysbusy(i32* %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %74, %68
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @VM_ALLOC_NOCREAT, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* @PGA_REFERENCED, align 4
  %91 = call i32 @vm_page_aflag_set(i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @VM_ALLOC_IGN_SBUSY, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @vm_page_busy_sleep(i32* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @VM_OBJECT_WLOCK(i32 %100)
  br label %52

102:                                              ; preds = %80
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @VM_ALLOC_NOCREAT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %102
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @vm_page_all_valid(i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %123, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @vm_page_xunbusy(i32* %115)
  br label %120

117:                                              ; preds = %111
  %118 = load i32*, i32** %10, align 8
  %119 = call i32 @vm_page_sunbusy(i32* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32**, i32*** %6, align 8
  store i32* null, i32** %121, align 8
  %122 = load i32, i32* @VM_PAGER_FAIL, align 4
  store i32 %122, i32* %5, align 4
  br label %222

123:                                              ; preds = %107, %102
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 @vm_page_wire(i32* %129)
  br label %131

131:                                              ; preds = %128, %123
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @vm_page_all_valid(i32* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  br label %192

136:                                              ; preds = %131
  br label %155

137:                                              ; preds = %52
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @VM_ALLOC_NOCREAT, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32**, i32*** %6, align 8
  store i32* null, i32** %143, align 8
  %144 = load i32, i32* @VM_PAGER_FAIL, align 4
  store i32 %144, i32* %5, align 4
  br label %222

145:                                              ; preds = %137
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %13, align 4
  %149 = call i32* @vm_page_alloc(i32 %146, i32 %147, i32 %148)
  store i32* %149, i32** %10, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  store i32 1, i32* %12, align 4
  br label %153

152:                                              ; preds = %145
  br label %52

153:                                              ; preds = %151
  br label %154

154:                                              ; preds = %153
  br label %155

155:                                              ; preds = %154, %136
  %156 = load i32*, i32** %10, align 8
  %157 = call i32 @vm_page_assert_xbusied(i32* %156)
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @MPASS(i32 %158)
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %8, align 4
  %162 = call i64 @vm_pager_has_page(i32 %160, i32 %161, i32* null, i32* null)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %187

164:                                              ; preds = %155
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @vm_pager_get_pages(i32 %165, i32** %10, i32 1, i32* null, i32* null)
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* @VM_PAGER_OK, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %183

170:                                              ; preds = %164
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load i32*, i32** %10, align 8
  %177 = call i32 @vm_page_unwire_noq(i32* %176)
  br label %178

178:                                              ; preds = %175, %170
  %179 = load i32*, i32** %10, align 8
  %180 = call i32 @vm_page_free(i32* %179)
  %181 = load i32**, i32*** %6, align 8
  store i32* null, i32** %181, align 8
  %182 = load i32, i32* %14, align 4
  store i32 %182, i32* %5, align 4
  br label %222

183:                                              ; preds = %164
  %184 = load i32*, i32** %10, align 8
  %185 = call i32 @vm_page_all_valid(i32* %184)
  %186 = call i32 @MPASS(i32 %185)
  br label %191

187:                                              ; preds = %155
  %188 = load i32*, i32** %10, align 8
  %189 = load i32, i32* @TRUE, align 4
  %190 = call i32 @vm_page_zero_invalid(i32* %188, i32 %189)
  br label %191

191:                                              ; preds = %187, %183
  br label %192

192:                                              ; preds = %191, %135
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %192
  %198 = load i32, i32* %12, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32*, i32** %10, align 8
  %202 = call i32 @vm_page_xunbusy(i32* %201)
  br label %206

203:                                              ; preds = %197
  %204 = load i32*, i32** %10, align 8
  %205 = call i32 @vm_page_sunbusy(i32* %204)
  br label %206

206:                                              ; preds = %203, %200
  br label %207

207:                                              ; preds = %206, %192
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* @VM_ALLOC_SBUSY, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %207
  %213 = load i32, i32* %12, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i32*, i32** %10, align 8
  %217 = call i32 @vm_page_busy_downgrade(i32* %216)
  br label %218

218:                                              ; preds = %215, %212, %207
  %219 = load i32*, i32** %10, align 8
  %220 = load i32**, i32*** %6, align 8
  store i32* %219, i32** %220, align 8
  %221 = load i32, i32* @VM_PAGER_OK, align 4
  store i32 %221, i32* %5, align 4
  br label %222

222:                                              ; preds = %218, %178, %142, %120
  %223 = load i32, i32* %5, align 4
  ret i32 %223
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(i32) #1

declare dso_local i32* @vm_page_lookup(i32, i32) #1

declare dso_local i32 @vm_page_all_valid(i32*) #1

declare dso_local i32 @vm_page_tryxbusy(i32*) #1

declare dso_local i32 @vm_page_trysbusy(i32*) #1

declare dso_local i32 @vm_page_aflag_set(i32*, i32) #1

declare dso_local i32 @vm_page_busy_sleep(i32*, i8*, i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i32 @vm_page_xunbusy(i32*) #1

declare dso_local i32 @vm_page_sunbusy(i32*) #1

declare dso_local i32 @vm_page_wire(i32*) #1

declare dso_local i32* @vm_page_alloc(i32, i32, i32) #1

declare dso_local i32 @vm_page_assert_xbusied(i32*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @vm_pager_has_page(i32, i32, i32*, i32*) #1

declare dso_local i32 @vm_pager_get_pages(i32, i32**, i32, i32*, i32*) #1

declare dso_local i32 @vm_page_unwire_noq(i32*) #1

declare dso_local i32 @vm_page_free(i32*) #1

declare dso_local i32 @vm_page_zero_invalid(i32*, i32) #1

declare dso_local i32 @vm_page_busy_downgrade(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
