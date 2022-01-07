; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_switch_unborn_to_new_branch.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_switch_unborn_to_new_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.checkout_opts = type { i8*, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"unborn\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"You are on a branch yet to be born\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"refs/heads/%s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"checkout -b\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Switched to a new branch '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.checkout_opts*)* @switch_unborn_to_new_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_unborn_to_new_branch(%struct.checkout_opts* %0) #0 {
  %2 = alloca %struct.checkout_opts*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf, align 4
  store %struct.checkout_opts* %0, %struct.checkout_opts** %2, align 8
  %5 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %6 = call i32 @trace2_cmd_mode(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.checkout_opts*, %struct.checkout_opts** %2, align 8
  %8 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @die(i8* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.checkout_opts*, %struct.checkout_opts** %2, align 8
  %16 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @create_symref(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 %21, i32* %3, align 4
  %22 = call i32 @strbuf_release(%struct.strbuf* %4)
  %23 = load %struct.checkout_opts*, %struct.checkout_opts** %2, align 8
  %24 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %14
  %28 = load i32, i32* @stderr, align 4
  %29 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %30 = load %struct.checkout_opts*, %struct.checkout_opts** %2, align 8
  %31 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @fprintf(i32 %28, i8* %29, i8* %32)
  br label %34

34:                                               ; preds = %27, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @trace2_cmd_mode(i8*) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @create_symref(i8*, i32, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
