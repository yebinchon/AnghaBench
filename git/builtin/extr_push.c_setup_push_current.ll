; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_push.c_setup_push_current.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_push.c_setup_push_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.remote = type { i32 }
%struct.branch = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@message_detached_head_die = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@rs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.remote*, %struct.branch*)* @setup_push_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_push_current(%struct.remote* %0, %struct.branch* %1) #0 {
  %3 = alloca %struct.remote*, align 8
  %4 = alloca %struct.branch*, align 8
  %5 = alloca %struct.strbuf, align 4
  store %struct.remote* %0, %struct.remote** %3, align 8
  store %struct.branch* %1, %struct.branch** %4, align 8
  %6 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %7 = load %struct.branch*, %struct.branch** %4, align 8
  %8 = icmp ne %struct.branch* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @message_detached_head_die, align 4
  %11 = call i32 @_(i32 %10)
  %12 = load %struct.remote*, %struct.remote** %3, align 8
  %13 = getelementptr inbounds %struct.remote, %struct.remote* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @die(i32 %11, i32 %14)
  br label %16

16:                                               ; preds = %9, %2
  %17 = load %struct.branch*, %struct.branch** %4, align 8
  %18 = getelementptr inbounds %struct.branch, %struct.branch* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.branch*, %struct.branch** %4, align 8
  %21 = getelementptr inbounds %struct.branch, %struct.branch* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strbuf_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @refspec_append(i32* @rs, i32 %25)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @die(i32, i32) #2

declare dso_local i32 @_(i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i32) #2

declare dso_local i32 @refspec_append(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
