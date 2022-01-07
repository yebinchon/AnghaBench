; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdresize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdresize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_s = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.md_req = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MD_RESERVE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_s*, %struct.md_req*)* @mdresize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdresize(%struct.md_s* %0, %struct.md_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.md_s*, align 8
  %5 = alloca %struct.md_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.md_s* %0, %struct.md_s** %4, align 8
  store %struct.md_req* %1, %struct.md_req** %5, align 8
  %10 = load %struct.md_s*, %struct.md_s** %4, align 8
  %11 = getelementptr inbounds %struct.md_s, %struct.md_s* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %173 [
    i32 128, label %13
    i32 130, label %13
    i32 129, label %14
  ]

13:                                               ; preds = %2, %2
  br label %175

14:                                               ; preds = %2
  %15 = load %struct.md_req*, %struct.md_req** %5, align 8
  %16 = getelementptr inbounds %struct.md_req, %struct.md_req* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.md_req*, %struct.md_req** %5, align 8
  %21 = getelementptr inbounds %struct.md_req, %struct.md_req* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = srem i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19, %14
  %27 = load i32, i32* @EDOM, align 4
  store i32 %27, i32* %3, align 4
  br label %190

28:                                               ; preds = %19
  %29 = load %struct.md_s*, %struct.md_s** %4, align 8
  %30 = getelementptr inbounds %struct.md_s, %struct.md_s* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @round_page(i32 %31)
  %33 = call i8* @OFF_TO_IDX(i32 %32)
  store i8* %33, i8** %8, align 8
  %34 = load %struct.md_req*, %struct.md_req** %5, align 8
  %35 = getelementptr inbounds %struct.md_req, %struct.md_req* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @round_page(i32 %36)
  %38 = call i8* @OFF_TO_IDX(i32 %37)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %42, label %89

42:                                               ; preds = %28
  %43 = load %struct.md_s*, %struct.md_s** %4, align 8
  %44 = getelementptr inbounds %struct.md_s, %struct.md_s* %43, i32 0, i32 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_6__* %45)
  %47 = load %struct.md_s*, %struct.md_s** %4, align 8
  %48 = getelementptr inbounds %struct.md_s, %struct.md_s* %47, i32 0, i32 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @vm_object_page_remove(%struct.TYPE_6__* %49, i8* %50, i32 0, i32 0)
  %52 = load %struct.md_s*, %struct.md_s** %4, align 8
  %53 = getelementptr inbounds %struct.md_s, %struct.md_s* %52, i32 0, i32 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @swap_pager_freespace(%struct.TYPE_6__* %54, i8* %55, i8* %61)
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = inttoptr i64 %67 to i8*
  %69 = call i8* @IDX_TO_OFF(i8* %68)
  %70 = load %struct.md_s*, %struct.md_s** %4, align 8
  %71 = getelementptr inbounds %struct.md_s, %struct.md_s* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @swap_release_by_cred(i8* %69, i32 %72)
  %74 = load i8*, i8** %9, align 8
  %75 = call i8* @IDX_TO_OFF(i8* %74)
  %76 = load %struct.md_s*, %struct.md_s** %4, align 8
  %77 = getelementptr inbounds %struct.md_s, %struct.md_s* %76, i32 0, i32 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i8* %75, i8** %79, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load %struct.md_s*, %struct.md_s** %4, align 8
  %82 = getelementptr inbounds %struct.md_s, %struct.md_s* %81, i32 0, i32 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i8* %80, i8** %84, align 8
  %85 = load %struct.md_s*, %struct.md_s** %4, align 8
  %86 = getelementptr inbounds %struct.md_s, %struct.md_s* %85, i32 0, i32 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_6__* %87)
  br label %172

89:                                               ; preds = %28
  %90 = load i8*, i8** %9, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = icmp ugt i8* %90, %91
  br i1 %92, label %93, label %171

93:                                               ; preds = %89
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = inttoptr i64 %98 to i8*
  %100 = call i8* @IDX_TO_OFF(i8* %99)
  %101 = load %struct.md_s*, %struct.md_s** %4, align 8
  %102 = getelementptr inbounds %struct.md_s, %struct.md_s* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @swap_reserve_by_cred(i8* %100, i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %93
  %108 = load i32, i32* @ENOMEM, align 4
  store i32 %108, i32* %3, align 4
  br label %190

109:                                              ; preds = %93
  %110 = load %struct.md_req*, %struct.md_req** %5, align 8
  %111 = getelementptr inbounds %struct.md_req, %struct.md_req* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MD_RESERVE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %109
  %117 = load %struct.md_s*, %struct.md_s** %4, align 8
  %118 = getelementptr inbounds %struct.md_s, %struct.md_s* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @MD_RESERVE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %151

123:                                              ; preds = %116, %109
  %124 = load %struct.md_s*, %struct.md_s** %4, align 8
  %125 = getelementptr inbounds %struct.md_s, %struct.md_s* %124, i32 0, i32 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = ptrtoint i8* %128 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  %133 = inttoptr i64 %132 to i8*
  %134 = call i32 @swap_pager_reserve(%struct.TYPE_6__* %126, i8* %127, i8* %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %123
  %138 = load i8*, i8** %9, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = inttoptr i64 %142 to i8*
  %144 = call i8* @IDX_TO_OFF(i8* %143)
  %145 = load %struct.md_s*, %struct.md_s** %4, align 8
  %146 = getelementptr inbounds %struct.md_s, %struct.md_s* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @swap_release_by_cred(i8* %144, i32 %147)
  %149 = load i32, i32* @EDOM, align 4
  store i32 %149, i32* %3, align 4
  br label %190

150:                                              ; preds = %123
  br label %151

151:                                              ; preds = %150, %116
  %152 = load %struct.md_s*, %struct.md_s** %4, align 8
  %153 = getelementptr inbounds %struct.md_s, %struct.md_s* %152, i32 0, i32 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_6__* %154)
  %156 = load i8*, i8** %9, align 8
  %157 = call i8* @IDX_TO_OFF(i8* %156)
  %158 = load %struct.md_s*, %struct.md_s** %4, align 8
  %159 = getelementptr inbounds %struct.md_s, %struct.md_s* %158, i32 0, i32 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  store i8* %157, i8** %161, align 8
  %162 = load i8*, i8** %9, align 8
  %163 = load %struct.md_s*, %struct.md_s** %4, align 8
  %164 = getelementptr inbounds %struct.md_s, %struct.md_s* %163, i32 0, i32 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  store i8* %162, i8** %166, align 8
  %167 = load %struct.md_s*, %struct.md_s** %4, align 8
  %168 = getelementptr inbounds %struct.md_s, %struct.md_s* %167, i32 0, i32 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_6__* %169)
  br label %171

171:                                              ; preds = %151, %89
  br label %172

172:                                              ; preds = %171, %42
  br label %175

173:                                              ; preds = %2
  %174 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %174, i32* %3, align 4
  br label %190

175:                                              ; preds = %172, %13
  %176 = load %struct.md_req*, %struct.md_req** %5, align 8
  %177 = getelementptr inbounds %struct.md_req, %struct.md_req* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.md_s*, %struct.md_s** %4, align 8
  %180 = getelementptr inbounds %struct.md_s, %struct.md_s* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = call i32 (...) @g_topology_lock()
  %182 = load %struct.md_s*, %struct.md_s** %4, align 8
  %183 = getelementptr inbounds %struct.md_s, %struct.md_s* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.md_s*, %struct.md_s** %4, align 8
  %186 = getelementptr inbounds %struct.md_s, %struct.md_s* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @g_resize_provider(i32 %184, i32 %187)
  %189 = call i32 (...) @g_topology_unlock()
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %175, %173, %137, %107, %26
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i8* @OFF_TO_IDX(i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @vm_object_page_remove(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @swap_pager_freespace(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @swap_release_by_cred(i8*, i32) #1

declare dso_local i8* @IDX_TO_OFF(i8*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @swap_reserve_by_cred(i8*, i32) #1

declare dso_local i32 @swap_pager_reserve(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_resize_provider(i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
