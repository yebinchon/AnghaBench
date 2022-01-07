; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_reclaim_contig_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_reclaim_contig_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_domain = type { i64, i64, i64 }

@NRUNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"npages is 0\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"alignment is not a power of 2\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"boundary is not a power of 2\00", align 1
@VM_ALLOC_CLASS_MASK = common dso_local global i32 0, align 4
@curproc = common dso_local global i64 0, align 8
@pageproc = common dso_local global i64 0, align 8
@VM_ALLOC_INTERRUPT = common dso_local global i32 0, align 4
@VM_ALLOC_SYSTEM = common dso_local global i32 0, align 4
@VPSC_NORESERV = common dso_local global i32 0, align 4
@MIN_RECLAIM = common dso_local global i64 0, align 8
@VPSC_NOSUPER = common dso_local global i32 0, align 4
@VPSC_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_page_reclaim_contig_domain(i32 %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.vm_domain*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %28 = load i32, i32* @NRUNS, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %19, align 8
  %31 = alloca i32*, i64 %29, align 16
  store i64 %29, i64* %20, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp sgt i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %36 = load i64, i64* %14, align 8
  %37 = call i32 @powerof2(i64 %36)
  %38 = call i32 @KASSERT(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i64, i64* %15, align 8
  %40 = call i32 @powerof2(i64 %39)
  %41 = call i32 @KASSERT(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @VM_ALLOC_CLASS_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %26, align 4
  %45 = load i64, i64* @curproc, align 8
  %46 = load i64, i64* @pageproc, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %7
  %49 = load i32, i32* %26, align 4
  %50 = load i32, i32* @VM_ALLOC_INTERRUPT, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @VM_ALLOC_SYSTEM, align 4
  store i32 %53, i32* %26, align 4
  br label %54

54:                                               ; preds = %52, %48, %7
  %55 = load i32, i32* %9, align 4
  %56 = call %struct.vm_domain* @VM_DOMAIN(i32 %55)
  store %struct.vm_domain* %56, %struct.vm_domain** %16, align 8
  %57 = load %struct.vm_domain*, %struct.vm_domain** %16, align 8
  %58 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %21, align 8
  %60 = load i64, i64* %21, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.vm_domain*, %struct.vm_domain** %16, align 8
  %63 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = icmp slt i64 %60, %65
  br i1 %66, label %87, label %67

67:                                               ; preds = %54
  %68 = load i64, i64* %21, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load %struct.vm_domain*, %struct.vm_domain** %16, align 8
  %71 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = icmp slt i64 %68, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load i32, i32* %26, align 4
  %77 = load i32, i32* @VM_ALLOC_SYSTEM, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %75, %67
  %80 = load i64, i64* %21, align 8
  %81 = load i64, i64* %11, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32, i32* %26, align 4
  %85 = load i32, i32* @VM_ALLOC_INTERRUPT, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %75, %54
  store i32 0, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %177

88:                                               ; preds = %83, %79
  %89 = load i32, i32* @VPSC_NORESERV, align 4
  store i32 %89, i32* %25, align 4
  br label %90

90:                                               ; preds = %176, %88
  %91 = load i64, i64* %12, align 8
  store i64 %91, i64* %17, align 8
  store i64 0, i64* %21, align 8
  br label %92

92:                                               ; preds = %104, %90
  %93 = load i32, i32* %9, align 4
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %17, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %15, align 8
  %99 = load i32, i32* %25, align 4
  %100 = call i32* @vm_phys_scan_contig(i32 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i32 %99)
  store i32* %100, i32** %18, align 8
  %101 = load i32*, i32** %18, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  br label %116

104:                                              ; preds = %92
  %105 = load i32*, i32** %18, align 8
  %106 = call i64 @VM_PAGE_TO_PHYS(i32* %105)
  %107 = load i64, i64* %11, align 8
  %108 = call i64 @ptoa(i64 %107)
  %109 = add nsw i64 %106, %108
  store i64 %109, i64* %17, align 8
  %110 = load i32*, i32** %18, align 8
  %111 = load i64, i64* %21, align 8
  %112 = call i64 @RUN_INDEX(i64 %111)
  %113 = getelementptr inbounds i32*, i32** %31, i64 %112
  store i32* %110, i32** %113, align 8
  %114 = load i64, i64* %21, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %21, align 8
  br label %92

116:                                              ; preds = %103
  store i64 0, i64* %22, align 8
  store i32 0, i32* %24, align 4
  br label %117

117:                                              ; preds = %151, %116
  %118 = load i64, i64* %21, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* %24, align 4
  %122 = load i32, i32* @NRUNS, align 4
  %123 = icmp slt i32 %121, %122
  br label %124

124:                                              ; preds = %120, %117
  %125 = phi i1 [ false, %117 ], [ %123, %120 ]
  br i1 %125, label %126, label %154

126:                                              ; preds = %124
  %127 = load i64, i64* %21, align 8
  %128 = add nsw i64 %127, -1
  store i64 %128, i64* %21, align 8
  %129 = load i64, i64* %21, align 8
  %130 = call i64 @RUN_INDEX(i64 %129)
  %131 = getelementptr inbounds i32*, i32** %31, i64 %130
  %132 = load i32*, i32** %131, align 8
  store i32* %132, i32** %18, align 8
  %133 = load i32, i32* %26, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i64, i64* %11, align 8
  %136 = load i32*, i32** %18, align 8
  %137 = load i64, i64* %13, align 8
  %138 = call i32 @vm_page_reclaim_run(i32 %133, i32 %134, i64 %135, i32* %136, i64 %137)
  store i32 %138, i32* %23, align 4
  %139 = load i32, i32* %23, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %126
  %142 = load i64, i64* %11, align 8
  %143 = load i64, i64* %22, align 8
  %144 = add nsw i64 %143, %142
  store i64 %144, i64* %22, align 8
  %145 = load i64, i64* %22, align 8
  %146 = load i64, i64* @MIN_RECLAIM, align 8
  %147 = icmp sge i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  store i32 1, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %177

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %149, %126
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %24, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %24, align 4
  br label %117

154:                                              ; preds = %124
  %155 = load i32, i32* %25, align 4
  %156 = load i32, i32* @VPSC_NORESERV, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i32, i32* @VPSC_NOSUPER, align 4
  store i32 %159, i32* %25, align 4
  br label %176

160:                                              ; preds = %154
  %161 = load i32, i32* %25, align 4
  %162 = load i32, i32* @VPSC_NOSUPER, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i32, i32* @VPSC_ANY, align 4
  store i32 %165, i32* %25, align 4
  br label %175

166:                                              ; preds = %160
  %167 = load i32, i32* %25, align 4
  %168 = load i32, i32* @VPSC_ANY, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load i64, i64* %22, align 8
  %172 = icmp ne i64 %171, 0
  %173 = zext i1 %172 to i32
  store i32 %173, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %177

174:                                              ; preds = %166
  br label %175

175:                                              ; preds = %174, %164
  br label %176

176:                                              ; preds = %175, %158
  br label %90

177:                                              ; preds = %170, %148, %87
  %178 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32, i32* %8, align 4
  ret i32 %179
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @powerof2(i64) #2

declare dso_local %struct.vm_domain* @VM_DOMAIN(i32) #2

declare dso_local i32* @vm_phys_scan_contig(i32, i64, i64, i64, i64, i64, i32) #2

declare dso_local i64 @VM_PAGE_TO_PHYS(i32*) #2

declare dso_local i64 @ptoa(i64) #2

declare dso_local i64 @RUN_INDEX(i64) #2

declare dso_local i32 @vm_page_reclaim_run(i32, i32, i64, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
