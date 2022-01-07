; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_kern_mdattach_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_kern_mdattach_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.md_req = type { i32, i32, i32, i32, i32*, i32 }
%struct.md_s = type { i32, i32, i32, i32, i32, i32 }

@md_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@MD_AUTOUNIT = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@EDOOFUS = common dso_local global i32 0, align 4
@mdstart_malloc = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@mdstart_vnode = common dso_local global i32 0, align 4
@mdstart_swap = common dso_local global i32 0, align 4
@mdstart_null = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.md_req*)* @kern_mdattach_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_mdattach_locked(%struct.thread* %0, %struct.md_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.md_req*, align 8
  %6 = alloca %struct.md_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.md_req* %1, %struct.md_req** %5, align 8
  %10 = load i32, i32* @SA_XLOCKED, align 4
  %11 = call i32 @sx_assert(i32* @md_sx, i32 %10)
  %12 = load %struct.md_req*, %struct.md_req** %5, align 8
  %13 = getelementptr inbounds %struct.md_req, %struct.md_req* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %16 [
    i32 132, label %15
    i32 130, label %15
    i32 128, label %15
    i32 129, label %15
    i32 131, label %15
  ]

15:                                               ; preds = %2, %2, %2, %2, %2
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %174

18:                                               ; preds = %15
  %19 = load %struct.md_req*, %struct.md_req** %5, align 8
  %20 = getelementptr inbounds %struct.md_req, %struct.md_req* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @DEV_BSIZE, align 4
  store i32 %24, i32* %7, align 4
  br label %29

25:                                               ; preds = %18
  %26 = load %struct.md_req*, %struct.md_req** %5, align 8
  %27 = getelementptr inbounds %struct.md_req, %struct.md_req* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %23
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MAXPHYS, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load %struct.md_req*, %struct.md_req** %5, align 8
  %35 = getelementptr inbounds %struct.md_req, %struct.md_req* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33, %29
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %174

41:                                               ; preds = %33
  %42 = load %struct.md_req*, %struct.md_req** %5, align 8
  %43 = getelementptr inbounds %struct.md_req, %struct.md_req* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MD_AUTOUNIT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.md_req*, %struct.md_req** %5, align 8
  %50 = getelementptr inbounds %struct.md_req, %struct.md_req* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.md_s* @mdnew(i32 -1, i32* %8, i32 %51)
  store %struct.md_s* %52, %struct.md_s** %6, align 8
  br label %69

53:                                               ; preds = %41
  %54 = load %struct.md_req*, %struct.md_req** %5, align 8
  %55 = getelementptr inbounds %struct.md_req, %struct.md_req* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @INT_MAX, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %3, align 4
  br label %174

61:                                               ; preds = %53
  %62 = load %struct.md_req*, %struct.md_req** %5, align 8
  %63 = getelementptr inbounds %struct.md_req, %struct.md_req* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.md_req*, %struct.md_req** %5, align 8
  %66 = getelementptr inbounds %struct.md_req, %struct.md_req* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.md_s* @mdnew(i32 %64, i32* %8, i32 %67)
  store %struct.md_s* %68, %struct.md_s** %6, align 8
  br label %69

69:                                               ; preds = %61, %48
  %70 = load %struct.md_s*, %struct.md_s** %6, align 8
  %71 = icmp eq %struct.md_s* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %174

74:                                               ; preds = %69
  %75 = load %struct.md_req*, %struct.md_req** %5, align 8
  %76 = getelementptr inbounds %struct.md_req, %struct.md_req* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.md_req*, %struct.md_req** %5, align 8
  %81 = getelementptr inbounds %struct.md_req, %struct.md_req* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.md_s*, %struct.md_s** %6, align 8
  %84 = getelementptr inbounds %struct.md_s, %struct.md_s* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @copyinstr(i32* %82, i32 %85, i32 4, i32* null)
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %79, %74
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %151

91:                                               ; preds = %87
  %92 = load %struct.md_req*, %struct.md_req** %5, align 8
  %93 = getelementptr inbounds %struct.md_req, %struct.md_req* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @MD_AUTOUNIT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load %struct.md_s*, %struct.md_s** %6, align 8
  %100 = getelementptr inbounds %struct.md_s, %struct.md_s* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.md_req*, %struct.md_req** %5, align 8
  %103 = getelementptr inbounds %struct.md_req, %struct.md_req* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %98, %91
  %105 = load %struct.md_req*, %struct.md_req** %5, align 8
  %106 = getelementptr inbounds %struct.md_req, %struct.md_req* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.md_s*, %struct.md_s** %6, align 8
  %109 = getelementptr inbounds %struct.md_s, %struct.md_s* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.md_s*, %struct.md_s** %6, align 8
  %112 = getelementptr inbounds %struct.md_s, %struct.md_s* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @EDOOFUS, align 4
  store i32 %113, i32* %8, align 4
  %114 = load %struct.md_s*, %struct.md_s** %6, align 8
  %115 = getelementptr inbounds %struct.md_s, %struct.md_s* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %150 [
    i32 132, label %117
    i32 130, label %124
    i32 128, label %126
    i32 129, label %134
    i32 131, label %142
  ]

117:                                              ; preds = %104
  %118 = load i32, i32* @mdstart_malloc, align 4
  %119 = load %struct.md_s*, %struct.md_s** %6, align 8
  %120 = getelementptr inbounds %struct.md_s, %struct.md_s* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 4
  %121 = load %struct.md_s*, %struct.md_s** %6, align 8
  %122 = load %struct.md_req*, %struct.md_req** %5, align 8
  %123 = call i32 @mdcreate_malloc(%struct.md_s* %121, %struct.md_req* %122)
  store i32 %123, i32* %8, align 4
  br label %150

124:                                              ; preds = %104
  %125 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %125, i32* %8, align 4
  br label %150

126:                                              ; preds = %104
  %127 = load i32, i32* @mdstart_vnode, align 4
  %128 = load %struct.md_s*, %struct.md_s** %6, align 8
  %129 = getelementptr inbounds %struct.md_s, %struct.md_s* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 4
  %130 = load %struct.md_s*, %struct.md_s** %6, align 8
  %131 = load %struct.md_req*, %struct.md_req** %5, align 8
  %132 = load %struct.thread*, %struct.thread** %4, align 8
  %133 = call i32 @mdcreate_vnode(%struct.md_s* %130, %struct.md_req* %131, %struct.thread* %132)
  store i32 %133, i32* %8, align 4
  br label %150

134:                                              ; preds = %104
  %135 = load i32, i32* @mdstart_swap, align 4
  %136 = load %struct.md_s*, %struct.md_s** %6, align 8
  %137 = getelementptr inbounds %struct.md_s, %struct.md_s* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load %struct.md_s*, %struct.md_s** %6, align 8
  %139 = load %struct.md_req*, %struct.md_req** %5, align 8
  %140 = load %struct.thread*, %struct.thread** %4, align 8
  %141 = call i32 @mdcreate_swap(%struct.md_s* %138, %struct.md_req* %139, %struct.thread* %140)
  store i32 %141, i32* %8, align 4
  br label %150

142:                                              ; preds = %104
  %143 = load i32, i32* @mdstart_null, align 4
  %144 = load %struct.md_s*, %struct.md_s** %6, align 8
  %145 = getelementptr inbounds %struct.md_s, %struct.md_s* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 4
  %146 = load %struct.md_s*, %struct.md_s** %6, align 8
  %147 = load %struct.md_req*, %struct.md_req** %5, align 8
  %148 = load %struct.thread*, %struct.thread** %4, align 8
  %149 = call i32 @mdcreate_null(%struct.md_s* %146, %struct.md_req* %147, %struct.thread* %148)
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %104, %142, %134, %126, %124, %117
  br label %151

151:                                              ; preds = %150, %90
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load %struct.md_s*, %struct.md_s** %6, align 8
  %156 = load %struct.thread*, %struct.thread** %4, align 8
  %157 = call i32 @mddestroy(%struct.md_s* %155, %struct.thread* %156)
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %3, align 4
  br label %174

159:                                              ; preds = %151
  %160 = load %struct.md_s*, %struct.md_s** %6, align 8
  %161 = getelementptr inbounds %struct.md_s, %struct.md_s* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.md_s*, %struct.md_s** %6, align 8
  %164 = getelementptr inbounds %struct.md_s, %struct.md_s* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = urem i32 %162, %165
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.md_s*, %struct.md_s** %6, align 8
  %169 = getelementptr inbounds %struct.md_s, %struct.md_s* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sub i32 %170, %167
  store i32 %171, i32* %169, align 4
  %172 = load %struct.md_s*, %struct.md_s** %6, align 8
  %173 = call i32 @mdinit(%struct.md_s* %172)
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %159, %154, %72, %59, %39, %16
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local %struct.md_s* @mdnew(i32, i32*, i32) #1

declare dso_local i32 @copyinstr(i32*, i32, i32, i32*) #1

declare dso_local i32 @mdcreate_malloc(%struct.md_s*, %struct.md_req*) #1

declare dso_local i32 @mdcreate_vnode(%struct.md_s*, %struct.md_req*, %struct.thread*) #1

declare dso_local i32 @mdcreate_swap(%struct.md_s*, %struct.md_req*, %struct.thread*) #1

declare dso_local i32 @mdcreate_null(%struct.md_s*, %struct.md_req*, %struct.thread*) #1

declare dso_local i32 @mddestroy(%struct.md_s*, %struct.thread*) #1

declare dso_local i32 @mdinit(%struct.md_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
