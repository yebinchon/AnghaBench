; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_patch-id.c_generate_id_list.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_patch-id.c_generate_id_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@stdin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @generate_id_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_id_list(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.object_id, align 4
  %4 = alloca %struct.object_id, align 4
  %5 = alloca %struct.object_id, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf, align 4
  store i32 %0, i32* %2, align 4
  %8 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %9 = call i32 @oidclr(%struct.object_id* %3)
  br label %10

10:                                               ; preds = %15, %1
  %11 = load i32, i32* @stdin, align 4
  %12 = call i32 @feof(i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @get_one_patchid(%struct.object_id* %4, %struct.object_id* %5, %struct.strbuf* %7, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @flush_current_id(i32 %18, %struct.object_id* %3, %struct.object_id* %5)
  %20 = call i32 @oidcpy(%struct.object_id* %3, %struct.object_id* %4)
  br label %10

21:                                               ; preds = %10
  %22 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @oidclr(%struct.object_id*) #2

declare dso_local i32 @feof(i32) #2

declare dso_local i32 @get_one_patchid(%struct.object_id*, %struct.object_id*, %struct.strbuf*, i32) #2

declare dso_local i32 @flush_current_id(i32, %struct.object_id*, %struct.object_id*) #2

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
