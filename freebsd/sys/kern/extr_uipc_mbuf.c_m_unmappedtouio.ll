; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_unmappedtouio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_unmappedtouio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mbuf_ext_pgs* }
%struct.mbuf_ext_pgs = type { i32, i32, i32, i32, i32*, i32*, i32* }
%struct.uio = type { i32 }

@vm_offset_t = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"off + len > trail (%d + %d > %d, m_off = %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_unmappedtouio(%struct.mbuf* %0, i32 %1, %struct.uio* %2, i32 %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf_ext_pgs*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.uio* %2, %struct.uio** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %19 = call i32 @MBUF_EXT_PGS_ASSERT(%struct.mbuf* %18)
  %20 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %22, align 8
  store %struct.mbuf_ext_pgs* %23, %struct.mbuf_ext_pgs** %9, align 8
  store i32 0, i32* %11, align 4
  %24 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %25 = load i32, i32* @vm_offset_t, align 4
  %26 = call i32 @mtod(%struct.mbuf* %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %13, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %13, align 4
  %30 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %31 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %4
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %37 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %42 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %13, align 4
  br label %68

46:                                               ; preds = %34
  %47 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %48 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @min(i32 %53, i32 %54)
  store i32 %55, i32* %16, align 4
  store i32 0, i32* %13, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %60 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %59, i32 0, i32 6
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %16, align 4
  %66 = load %struct.uio*, %struct.uio** %7, align 8
  %67 = call i32 @uiomove(i32* %64, i32 %65, %struct.uio* %66)
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %46, %40
  br label %69

69:                                               ; preds = %68, %4
  %70 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %71 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %124, %69
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %76 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = icmp sgt i32 %83, 0
  br label %85

85:                                               ; preds = %82, %79, %73
  %86 = phi i1 [ false, %79 ], [ false, %73 ], [ %84, %82 ]
  br i1 %86, label %87, label %127

87:                                               ; preds = %85
  %88 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @mbuf_ext_pg_len(%struct.mbuf_ext_pgs* %88, i32 %89, i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %13, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %124

99:                                               ; preds = %87
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %13, align 4
  %102 = sub nsw i32 %100, %101
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %103, %104
  store i32 %105, i32* %17, align 4
  store i32 0, i32* %13, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @min(i32 %106, i32 %107)
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %8, align 4
  %111 = sub nsw i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %113 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @PHYS_TO_VM_PAGE(i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %16, align 4
  %122 = load %struct.uio*, %struct.uio** %7, align 8
  %123 = call i32 @uiomove_fromphys(i32* %10, i32 %120, i32 %121, %struct.uio* %122)
  store i32 %123, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %124

124:                                              ; preds = %99, %95
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %73

127:                                              ; preds = %85
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %160

130:                                              ; preds = %127
  %131 = load i32, i32* %11, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %160

133:                                              ; preds = %130
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %134, %135
  %137 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %138 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp sle i32 %136, %139
  %141 = zext i1 %140 to i32
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %145 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = call i32 @KASSERT(i32 %141, i8* %149)
  %151 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %152 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.uio*, %struct.uio** %7, align 8
  %159 = call i32 @uiomove(i32* %156, i32 %157, %struct.uio* %158)
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %133, %130, %127
  %161 = load i32, i32* %11, align 4
  ret i32 %161
}

declare dso_local i32 @MBUF_EXT_PGS_ASSERT(%struct.mbuf*) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #1

declare dso_local i32 @mbuf_ext_pg_len(%struct.mbuf_ext_pgs*, i32, i32) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @uiomove_fromphys(i32*, i32, i32, %struct.uio*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
