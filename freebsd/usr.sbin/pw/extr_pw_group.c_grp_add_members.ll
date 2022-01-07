; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_grp_add_members.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_grp_add_members.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32 }
%struct.passwd = type { i32 }

@__const.grp_add_members.tok = private unnamed_addr constant [4 x i8] c", \09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.group**, i8*)* @grp_add_members to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grp_add_members(%struct.group** %0, i8* %1) #0 {
  %3 = alloca %struct.group**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [4 x i8], align 1
  store %struct.group** %0, %struct.group*** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.grp_add_members.tok, i32 0, i32 0), i64 4, i1 false)
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %41

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %15 = call i8* @strtok(i8* %13, i8* %14)
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %38, %12
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load i8*, i8** %6, align 8
  %21 = call %struct.passwd* @lookup_pwent(i8* %20)
  store %struct.passwd* %21, %struct.passwd** %5, align 8
  %22 = load %struct.group**, %struct.group*** %3, align 8
  %23 = load %struct.group*, %struct.group** %22, align 8
  %24 = load %struct.passwd*, %struct.passwd** %5, align 8
  %25 = getelementptr inbounds %struct.passwd, %struct.passwd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @grp_has_member(%struct.group* %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %38

30:                                               ; preds = %19
  %31 = load %struct.group**, %struct.group*** %3, align 8
  %32 = load %struct.group*, %struct.group** %31, align 8
  %33 = load %struct.passwd*, %struct.passwd** %5, align 8
  %34 = getelementptr inbounds %struct.passwd, %struct.passwd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.group* @gr_add(%struct.group* %32, i32 %35)
  %37 = load %struct.group**, %struct.group*** %3, align 8
  store %struct.group* %36, %struct.group** %37, align 8
  br label %38

38:                                               ; preds = %30, %29
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %40 = call i8* @strtok(i8* null, i8* %39)
  store i8* %40, i8** %6, align 8
  br label %16

41:                                               ; preds = %11, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local %struct.passwd* @lookup_pwent(i8*) #2

declare dso_local i64 @grp_has_member(%struct.group*, i32) #2

declare dso_local %struct.group* @gr_add(%struct.group*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
