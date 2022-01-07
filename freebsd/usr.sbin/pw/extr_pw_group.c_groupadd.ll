; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_groupadd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_groupadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userconf = type { i32 }
%struct.group = type { i8*, i8*, i32, i8*, i64, i32, i32*, i32* }

@.str = private unnamed_addr constant [8 x i8] c"nogroup\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@EX_IOERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"group '%s' already exists\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"group update\00", align 1
@M_ADD = common dso_local global i32 0, align 4
@W_GROUP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"%s(%ju)\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @groupadd(%struct.userconf* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.userconf*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.group*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.group, align 8
  store %struct.userconf* %0, %struct.userconf** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = bitcast %struct.group* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 64, i1 false)
  %22 = bitcast i8* %21 to %struct.group*
  %23 = getelementptr inbounds %struct.group, %struct.group* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8** %23, align 8
  %24 = getelementptr inbounds %struct.group, %struct.group* %22, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %24, align 8
  %25 = getelementptr inbounds %struct.group, %struct.group* %22, i32 0, i32 2
  store i32 -1, i32* %25, align 8
  store %struct.group* %20, %struct.group** %18, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @pw_checkname(i8* %26, i32 0)
  %28 = load %struct.group*, %struct.group** %18, align 8
  %29 = getelementptr inbounds %struct.group, %struct.group* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.group*, %struct.group** %18, align 8
  %31 = getelementptr inbounds %struct.group, %struct.group* %30, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  %32 = load %struct.userconf*, %struct.userconf** %10, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @gr_gidpolicy(%struct.userconf* %32, i32 %33)
  %35 = load %struct.group*, %struct.group** %18, align 8
  %36 = getelementptr inbounds %struct.group, %struct.group* %35, i32 0, i32 4
  store i64 %34, i64* %36, align 8
  %37 = load %struct.group*, %struct.group** %18, align 8
  %38 = getelementptr inbounds %struct.group, %struct.group* %37, i32 0, i32 6
  store i32* null, i32** %38, align 8
  %39 = load %struct.group*, %struct.group** %18, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @grp_set_passwd(%struct.group* %39, i32 0, i32 %40, i32 %41)
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 @grp_add_members(%struct.group** %18, i8* %43)
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %8
  %48 = load %struct.group*, %struct.group** %18, align 8
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @print_group(%struct.group* %48, i32 %49)
  store i32 %50, i32* %9, align 4
  br label %81

51:                                               ; preds = %8
  %52 = load %struct.group*, %struct.group** %18, align 8
  %53 = call i32 @addgrent(%struct.group* %52)
  store i32 %53, i32* %19, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i32, i32* %19, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* @EX_IOERR, align 4
  %60 = load %struct.group*, %struct.group** %18, align 8
  %61 = getelementptr inbounds %struct.group, %struct.group* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @errx(i32 %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @EX_IOERR, align 4
  %66 = call i32 @err(i32 %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %58
  br label %68

68:                                               ; preds = %67, %51
  %69 = load %struct.userconf*, %struct.userconf** %10, align 8
  %70 = load i32, i32* @M_ADD, align 4
  %71 = load i32, i32* @W_GROUP, align 4
  %72 = load %struct.group*, %struct.group** %18, align 8
  %73 = getelementptr inbounds %struct.group, %struct.group* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.group*, %struct.group** %18, align 8
  %76 = getelementptr inbounds %struct.group, %struct.group* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @pw_log(%struct.userconf* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32 %78)
  %80 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %68, %47
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pw_checkname(i8*, i32) #2

declare dso_local i64 @gr_gidpolicy(%struct.userconf*, i32) #2

declare dso_local i32 @grp_set_passwd(%struct.group*, i32, i32, i32) #2

declare dso_local i32 @grp_add_members(%struct.group**, i8*) #2

declare dso_local i32 @print_group(%struct.group*, i32) #2

declare dso_local i32 @addgrent(%struct.group*) #2

declare dso_local i32 @errx(i32, i8*, i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @pw_log(%struct.userconf*, i32, i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
