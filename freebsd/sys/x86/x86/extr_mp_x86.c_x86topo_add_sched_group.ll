; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_x86topo_add_sched_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_x86topo_add_sched_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.topo_node = type { i64, i32, i64, i32 }
%struct.cpu_group = type { i32, i64, i32, %struct.cpu_group*, %struct.cpu_group*, i32, i32 }

@TOPO_TYPE_SYSTEM = common dso_local global i64 0, align 8
@TOPO_TYPE_CACHE = common dso_local global i64 0, align 8
@TOPO_TYPE_GROUP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"x86topo_add_sched_group: bad type: %u\00", align 1
@CG_SHARE_NONE = common dso_local global i64 0, align 8
@TOPO_TYPE_CORE = common dso_local global i64 0, align 8
@CG_FLAG_SMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.topo_node*, %struct.cpu_group*)* @x86topo_add_sched_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86topo_add_sched_group(%struct.topo_node* %0, %struct.cpu_group* %1) #0 {
  %3 = alloca %struct.topo_node*, align 8
  %4 = alloca %struct.cpu_group*, align 8
  %5 = alloca %struct.topo_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.topo_node* %0, %struct.topo_node** %3, align 8
  store %struct.cpu_group* %1, %struct.cpu_group** %4, align 8
  %9 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %10 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TOPO_TYPE_SYSTEM, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %16 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TOPO_TYPE_CACHE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %22 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TOPO_TYPE_GROUP, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %20, %14, %2
  %27 = phi i1 [ true, %14 ], [ true, %2 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %30 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %28, i8* %32)
  %34 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %35 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %34, i32 0, i32 3
  %36 = load %struct.cpu_group*, %struct.cpu_group** %4, align 8
  %37 = getelementptr inbounds %struct.cpu_group, %struct.cpu_group* %36, i32 0, i32 6
  %38 = call i32 @CPU_COPY(i32* %35, i32* %37)
  %39 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %40 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.cpu_group*, %struct.cpu_group** %4, align 8
  %43 = getelementptr inbounds %struct.cpu_group, %struct.cpu_group* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %45 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TOPO_TYPE_SYSTEM, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %26
  %50 = load i64, i64* @CG_SHARE_NONE, align 8
  %51 = load %struct.cpu_group*, %struct.cpu_group** %4, align 8
  %52 = getelementptr inbounds %struct.cpu_group, %struct.cpu_group* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %59

53:                                               ; preds = %26
  %54 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %55 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.cpu_group*, %struct.cpu_group** %4, align 8
  %58 = getelementptr inbounds %struct.cpu_group, %struct.cpu_group* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %53, %49
  store i32 0, i32* %7, align 4
  %60 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  store %struct.topo_node* %60, %struct.topo_node** %5, align 8
  br label %61

61:                                               ; preds = %74, %70, %59
  %62 = load %struct.topo_node*, %struct.topo_node** %5, align 8
  %63 = icmp ne %struct.topo_node* %62, null
  br i1 %63, label %64, label %80

64:                                               ; preds = %61
  %65 = load %struct.topo_node*, %struct.topo_node** %5, align 8
  %66 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @TOPO_TYPE_CORE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %72 = load %struct.topo_node*, %struct.topo_node** %5, align 8
  %73 = call %struct.topo_node* @topo_next_node(%struct.topo_node* %71, %struct.topo_node* %72)
  store %struct.topo_node* %73, %struct.topo_node** %5, align 8
  br label %61

74:                                               ; preds = %64
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  %77 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %78 = load %struct.topo_node*, %struct.topo_node** %5, align 8
  %79 = call %struct.topo_node* @topo_next_nonchild_node(%struct.topo_node* %77, %struct.topo_node* %78)
  store %struct.topo_node* %79, %struct.topo_node** %5, align 8
  br label %61

80:                                               ; preds = %61
  %81 = load %struct.cpu_group*, %struct.cpu_group** %4, align 8
  %82 = getelementptr inbounds %struct.cpu_group, %struct.cpu_group* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CG_SHARE_NONE, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %88 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 2
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* @CG_FLAG_SMT, align 4
  %96 = load %struct.cpu_group*, %struct.cpu_group** %4, align 8
  %97 = getelementptr inbounds %struct.cpu_group, %struct.cpu_group* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %94, %91, %86, %80
  store i32 0, i32* %6, align 4
  %99 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  store %struct.topo_node* %99, %struct.topo_node** %5, align 8
  br label %100

100:                                              ; preds = %132, %128, %98
  %101 = load %struct.topo_node*, %struct.topo_node** %5, align 8
  %102 = icmp ne %struct.topo_node* %101, null
  br i1 %102, label %103, label %138

103:                                              ; preds = %100
  %104 = load %struct.topo_node*, %struct.topo_node** %5, align 8
  %105 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @TOPO_TYPE_GROUP, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load %struct.topo_node*, %struct.topo_node** %5, align 8
  %111 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @TOPO_TYPE_CACHE, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %128, label %115

115:                                              ; preds = %109, %103
  %116 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %117 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @TOPO_TYPE_SYSTEM, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load %struct.topo_node*, %struct.topo_node** %5, align 8
  %123 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %122, i32 0, i32 3
  %124 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %125 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %124, i32 0, i32 3
  %126 = call i64 @CPU_CMP(i32* %123, i32* %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121, %109
  %129 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %130 = load %struct.topo_node*, %struct.topo_node** %5, align 8
  %131 = call %struct.topo_node* @topo_next_node(%struct.topo_node* %129, %struct.topo_node* %130)
  store %struct.topo_node* %131, %struct.topo_node** %5, align 8
  br label %100

132:                                              ; preds = %121, %115
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  %135 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %136 = load %struct.topo_node*, %struct.topo_node** %5, align 8
  %137 = call %struct.topo_node* @topo_next_nonchild_node(%struct.topo_node* %135, %struct.topo_node* %136)
  store %struct.topo_node* %137, %struct.topo_node** %5, align 8
  br label %100

138:                                              ; preds = %100
  %139 = load i32, i32* %6, align 4
  %140 = call %struct.cpu_group* @smp_topo_alloc(i32 %139)
  %141 = load %struct.cpu_group*, %struct.cpu_group** %4, align 8
  %142 = getelementptr inbounds %struct.cpu_group, %struct.cpu_group* %141, i32 0, i32 3
  store %struct.cpu_group* %140, %struct.cpu_group** %142, align 8
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.cpu_group*, %struct.cpu_group** %4, align 8
  %145 = getelementptr inbounds %struct.cpu_group, %struct.cpu_group* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  store %struct.topo_node* %146, %struct.topo_node** %5, align 8
  store i32 0, i32* %8, align 4
  br label %147

147:                                              ; preds = %179, %175, %138
  %148 = load %struct.topo_node*, %struct.topo_node** %5, align 8
  %149 = icmp ne %struct.topo_node* %148, null
  br i1 %149, label %150, label %200

150:                                              ; preds = %147
  %151 = load %struct.topo_node*, %struct.topo_node** %5, align 8
  %152 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @TOPO_TYPE_GROUP, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load %struct.topo_node*, %struct.topo_node** %5, align 8
  %158 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @TOPO_TYPE_CACHE, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %175, label %162

162:                                              ; preds = %156, %150
  %163 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %164 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @TOPO_TYPE_SYSTEM, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %162
  %169 = load %struct.topo_node*, %struct.topo_node** %5, align 8
  %170 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %169, i32 0, i32 3
  %171 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %172 = getelementptr inbounds %struct.topo_node, %struct.topo_node* %171, i32 0, i32 3
  %173 = call i64 @CPU_CMP(i32* %170, i32* %172)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %168, %156
  %176 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %177 = load %struct.topo_node*, %struct.topo_node** %5, align 8
  %178 = call %struct.topo_node* @topo_next_node(%struct.topo_node* %176, %struct.topo_node* %177)
  store %struct.topo_node* %178, %struct.topo_node** %5, align 8
  br label %147

179:                                              ; preds = %168, %162
  %180 = load %struct.cpu_group*, %struct.cpu_group** %4, align 8
  %181 = load %struct.cpu_group*, %struct.cpu_group** %4, align 8
  %182 = getelementptr inbounds %struct.cpu_group, %struct.cpu_group* %181, i32 0, i32 3
  %183 = load %struct.cpu_group*, %struct.cpu_group** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.cpu_group, %struct.cpu_group* %183, i64 %185
  %187 = getelementptr inbounds %struct.cpu_group, %struct.cpu_group* %186, i32 0, i32 4
  store %struct.cpu_group* %180, %struct.cpu_group** %187, align 8
  %188 = load %struct.topo_node*, %struct.topo_node** %5, align 8
  %189 = load %struct.cpu_group*, %struct.cpu_group** %4, align 8
  %190 = getelementptr inbounds %struct.cpu_group, %struct.cpu_group* %189, i32 0, i32 3
  %191 = load %struct.cpu_group*, %struct.cpu_group** %190, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.cpu_group, %struct.cpu_group* %191, i64 %193
  call void @x86topo_add_sched_group(%struct.topo_node* %188, %struct.cpu_group* %194)
  %195 = load i32, i32* %8, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %8, align 4
  %197 = load %struct.topo_node*, %struct.topo_node** %3, align 8
  %198 = load %struct.topo_node*, %struct.topo_node** %5, align 8
  %199 = call %struct.topo_node* @topo_next_nonchild_node(%struct.topo_node* %197, %struct.topo_node* %198)
  store %struct.topo_node* %199, %struct.topo_node** %5, align 8
  br label %147

200:                                              ; preds = %147
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CPU_COPY(i32*, i32*) #1

declare dso_local %struct.topo_node* @topo_next_node(%struct.topo_node*, %struct.topo_node*) #1

declare dso_local %struct.topo_node* @topo_next_nonchild_node(%struct.topo_node*, %struct.topo_node*) #1

declare dso_local i64 @CPU_CMP(i32*, i32*) #1

declare dso_local %struct.cpu_group* @smp_topo_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
