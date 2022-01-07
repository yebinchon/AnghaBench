; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_uiotombuf_nomap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_uiotombuf_nomap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.mbuf* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.mbuf_ext_pgs* }
%struct.mbuf_ext_pgs = type { i32, i32, i32*, i32 }
%struct.uio = type { i32 }
%struct.TYPE_9__ = type { i32 }

@MBUF_PEXT_MAX_PGS = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_NODUMP = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@mb_free_mext_pgs = common dso_local global i32 0, align 4
@MBUF_PEXT_FLAG_ANON = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.uio*, i32, i32, i32, i32)* @m_uiotombuf_nomap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @m_uiotombuf_nomap(%struct.uio* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.uio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca %struct.mbuf_ext_pgs*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.uio* %0, %struct.uio** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %25 = load i32, i32* @MBUF_PEXT_MAX_PGS, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %16, align 8
  %28 = alloca %struct.TYPE_9__*, i64 %26, align 16
  store i64 %26, i64* %17, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @malloc2vm_flags(i32 %29)
  %31 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @VM_ALLOC_NODUMP, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %23, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %5
  %40 = load %struct.uio*, %struct.uio** %7, align 8
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @MIN(i32 %42, i32 %43)
  store i32 %44, i32* %22, align 4
  br label %49

45:                                               ; preds = %5
  %46 = load %struct.uio*, %struct.uio** %7, align 8
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %22, align 4
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* @MBUF_PEXT_MAX_PGS, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %52, %49
  store %struct.mbuf* null, %struct.mbuf** %12, align 8
  br label %57

57:                                               ; preds = %192, %56
  %58 = load i32, i32* %22, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %193

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @M_PKTHDR, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @mb_free_mext_pgs, align 4
  %66 = call %struct.mbuf* @mb_alloc_ext_pgs(i32 %61, i32 %64, i32 %65)
  store %struct.mbuf* %66, %struct.mbuf** %13, align 8
  %67 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %68 = icmp eq %struct.mbuf* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %195

70:                                               ; preds = %60
  %71 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %72 = icmp eq %struct.mbuf* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %74, %struct.mbuf** %12, align 8
  br label %79

75:                                               ; preds = %70
  %76 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %78 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %77, i32 0, i32 3
  store %struct.mbuf* %76, %struct.mbuf** %78, align 8
  br label %79

79:                                               ; preds = %75, %73
  %80 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %80, %struct.mbuf** %14, align 8
  %81 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %82 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %83, align 8
  store %struct.mbuf_ext_pgs* %84, %struct.mbuf_ext_pgs** %15, align 8
  %85 = load i32, i32* @MBUF_PEXT_FLAG_ANON, align 4
  %86 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %15, align 8
  %87 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %22, align 4
  %90 = call i32 @MIN(i32 %88, i32 %89)
  store i32 %90, i32* %19, align 4
  store i32 %90, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %91

91:                                               ; preds = %139, %79
  %92 = load i32, i32* %21, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %145

94:                                               ; preds = %91
  br label %95

95:                                               ; preds = %112, %94
  %96 = load i32, i32* %23, align 4
  %97 = call %struct.TYPE_9__* @vm_page_alloc(i32* null, i32 0, i32 %96)
  %98 = load i32, i32* %20, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %28, i64 %99
  store %struct.TYPE_9__* %97, %struct.TYPE_9__** %100, align 8
  %101 = load i32, i32* %20, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %28, i64 %102
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = icmp eq %struct.TYPE_9__* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %95
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @M_NOWAIT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %195

112:                                              ; preds = %106
  %113 = call i32 @vm_wait(i32* null)
  br label %95

114:                                              ; preds = %95
  %115 = load i32, i32* @PG_ZERO, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %20, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %28, i64 %118
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %116
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* %20, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %28, i64 %125
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_9__* %127)
  %129 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %15, align 8
  %130 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %20, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %128, i32* %134, align 4
  %135 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %15, align 8
  %136 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %114
  %140 = load i32, i32* %20, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %20, align 4
  %142 = load i32, i32* @PAGE_SIZE, align 4
  %143 = load i32, i32* %21, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %21, align 4
  br label %91

145:                                              ; preds = %91
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* @PAGE_SIZE, align 4
  %148 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %15, align 8
  %149 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %150, 1
  %152 = mul nsw i32 %147, %151
  %153 = sub nsw i32 %146, %152
  %154 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %15, align 8
  %155 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %15, align 8
  %157 = call i32 @MBUF_EXT_PGS_ASSERT_SANITY(%struct.mbuf_ext_pgs* %156)
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %22, align 4
  %160 = sub nsw i32 %159, %158
  store i32 %160, i32* %22, align 4
  %161 = load i32, i32* %19, align 4
  %162 = load %struct.uio*, %struct.uio** %7, align 8
  %163 = call i32 @uiomove_fromphys(%struct.TYPE_9__** %28, i32 0, i32 %161, %struct.uio* %162)
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* %18, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %145
  br label %195

167:                                              ; preds = %145
  %168 = load i32, i32* %19, align 4
  %169 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %170 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* @PAGE_SIZE, align 4
  %172 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %15, align 8
  %173 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = mul nsw i32 %171, %174
  %176 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %177 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, %175
  store i32 %180, i32* %178, align 8
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* @M_PKTHDR, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %167
  %186 = load i32, i32* %19, align 4
  %187 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %188 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, %186
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %185, %167
  br label %57

193:                                              ; preds = %57
  %194 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  store %struct.mbuf* %194, %struct.mbuf** %6, align 8
  store i32 1, i32* %24, align 4
  br label %198

195:                                              ; preds = %166, %111, %69
  %196 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %197 = call i32 @m_freem(%struct.mbuf* %196)
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  store i32 1, i32* %24, align 4
  br label %198

198:                                              ; preds = %195, %193
  %199 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %199)
  %200 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  ret %struct.mbuf* %200
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @malloc2vm_flags(i32) #2

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local %struct.mbuf* @mb_alloc_ext_pgs(i32, i32, i32) #2

declare dso_local %struct.TYPE_9__* @vm_page_alloc(i32*, i32, i32) #2

declare dso_local i32 @vm_wait(i32*) #2

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_9__*) #2

declare dso_local i32 @MBUF_EXT_PGS_ASSERT_SANITY(%struct.mbuf_ext_pgs*) #2

declare dso_local i32 @uiomove_fromphys(%struct.TYPE_9__**, i32, i32, %struct.uio*) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
