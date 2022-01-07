; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_jail.c_update_jail.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_jail.c_update_jail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfjail = type { i32, i32*, %struct.jailparam*, i32 }
%struct.jailparam = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"jid\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@jail_errmsg = common dso_local global i32 0, align 4
@IP_ALLOW_DYING = common dso_local global i64 0, align 8
@JAIL_UPDATE = common dso_local global i32 0, align 4
@JAIL_DYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfjail*)* @update_jail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_jail(%struct.cfjail* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cfjail*, align 8
  %4 = alloca %struct.jailparam*, align 8
  %5 = alloca %struct.jailparam*, align 8
  %6 = alloca %struct.jailparam*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cfjail* %0, %struct.cfjail** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %10 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %9, i32 0, i32 2
  %11 = load %struct.jailparam*, %struct.jailparam** %10, align 8
  store %struct.jailparam* %11, %struct.jailparam** %4, align 8
  br label %12

12:                                               ; preds = %31, %1
  %13 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %14 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %15 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %14, i32 0, i32 2
  %16 = load %struct.jailparam*, %struct.jailparam** %15, align 8
  %17 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %18 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %16, i64 %20
  %22 = icmp ult %struct.jailparam* %13, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %12
  %24 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %25 = call i32 @JP_RDTUN(%struct.jailparam* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %33 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %32, i32 1
  store %struct.jailparam* %33, %struct.jailparam** %4, align 8
  br label %12

34:                                               ; preds = %12
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %122

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call %struct.jailparam* @alloca(i32 %43)
  store %struct.jailparam* %44, %struct.jailparam** %5, align 8
  store %struct.jailparam* %44, %struct.jailparam** %6, align 8
  %45 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %46 = call i64 @jailparam_init(%struct.jailparam* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %38
  %49 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %50 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %51 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %50, i32 0, i32 3
  %52 = call i64 @jailparam_import_raw(%struct.jailparam* %49, i32* %51, i32 4)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48, %38
  %55 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %56 = load i32, i32* @jail_errmsg, align 4
  %57 = call i32 @jail_warnx(%struct.cfjail* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %59 = call i32 @failed(%struct.cfjail* %58)
  store i32 -1, i32* %2, align 4
  br label %122

60:                                               ; preds = %48
  %61 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %62 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %61, i32 0, i32 2
  %63 = load %struct.jailparam*, %struct.jailparam** %62, align 8
  store %struct.jailparam* %63, %struct.jailparam** %4, align 8
  br label %64

64:                                               ; preds = %86, %60
  %65 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %66 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %67 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %66, i32 0, i32 2
  %68 = load %struct.jailparam*, %struct.jailparam** %67, align 8
  %69 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %70 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %68, i64 %72
  %74 = icmp ult %struct.jailparam* %65, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %64
  %76 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %77 = call i32 @JP_RDTUN(%struct.jailparam* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %75
  %80 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %81 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %80, i32 1
  store %struct.jailparam* %81, %struct.jailparam** %6, align 8
  %82 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %83 = bitcast %struct.jailparam* %81 to i8*
  %84 = bitcast %struct.jailparam* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 4, i1 false)
  br label %85

85:                                               ; preds = %79, %75
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %88 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %87, i32 1
  store %struct.jailparam* %88, %struct.jailparam** %4, align 8
  br label %64

89:                                               ; preds = %64
  %90 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %91 = load %struct.jailparam*, %struct.jailparam** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %94 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @IP_ALLOW_DYING, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @bool_param(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %89
  %102 = load i32, i32* @JAIL_UPDATE, align 4
  %103 = load i32, i32* @JAIL_DYING, align 4
  %104 = or i32 %102, %103
  br label %107

105:                                              ; preds = %89
  %106 = load i32, i32* @JAIL_UPDATE, align 4
  br label %107

107:                                              ; preds = %105, %101
  %108 = phi i32 [ %104, %101 ], [ %106, %105 ]
  %109 = call i32 @jailparam_set_note(%struct.cfjail* %90, %struct.jailparam* %91, i32 %92, i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %114 = load i32, i32* @jail_errmsg, align 4
  %115 = call i32 @jail_warnx(%struct.cfjail* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %117 = call i32 @failed(%struct.cfjail* %116)
  br label %118

118:                                              ; preds = %112, %107
  %119 = load %struct.jailparam*, %struct.jailparam** %5, align 8
  %120 = call i32 @jailparam_free(%struct.jailparam* %119, i32 1)
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %118, %54, %37
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @JP_RDTUN(%struct.jailparam*) #1

declare dso_local %struct.jailparam* @alloca(i32) #1

declare dso_local i64 @jailparam_init(%struct.jailparam*, i8*) #1

declare dso_local i64 @jailparam_import_raw(%struct.jailparam*, i32*, i32) #1

declare dso_local i32 @jail_warnx(%struct.cfjail*, i8*, i32) #1

declare dso_local i32 @failed(%struct.cfjail*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @jailparam_set_note(%struct.cfjail*, %struct.jailparam*, i32, i32) #1

declare dso_local i64 @bool_param(i32) #1

declare dso_local i32 @jailparam_free(%struct.jailparam*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
