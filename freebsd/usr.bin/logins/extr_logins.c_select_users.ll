; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/logins/extr_logins.c_select_users.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/logins/extr_logins.c_select_users.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpasswd = type { i32, i32, i8*, i32 }
%struct.xgroup = type { i64, i32 }

@pwds = common dso_local global %struct.xpasswd* null, align 8
@npwds = common dso_local global i32 0, align 4
@everything = common dso_local global i64 0, align 8
@d_flag = common dso_local global i64 0, align 8
@g_args = common dso_local global i64 0, align 8
@grps = common dso_local global %struct.xgroup* null, align 8
@ngrps = common dso_local global i32 0, align 4
@l_args = common dso_local global i64 0, align 8
@p_flag = common dso_local global i64 0, align 8
@s_flag = common dso_local global i64 0, align 8
@u_flag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @select_users to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_users() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgroup*, align 8
  %4 = alloca %struct.xpasswd*, align 8
  store i32 0, i32* %1, align 4
  %5 = load %struct.xpasswd*, %struct.xpasswd** @pwds, align 8
  store %struct.xpasswd* %5, %struct.xpasswd** %4, align 8
  br label %6

6:                                                ; preds = %154, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @npwds, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %159

10:                                               ; preds = %6
  %11 = load i64, i64* @everything, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %15 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  br label %154

16:                                               ; preds = %10
  %17 = load i64, i64* @d_flag, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  %20 = load i32, i32* %1, align 4
  %21 = icmp ugt i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %24 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %27 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %26, i64 -1
  %28 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %45, label %31

31:                                               ; preds = %22, %19
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @npwds, align 4
  %34 = sub i32 %33, 1
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %38 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %41 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %40, i64 1
  %42 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %39, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36, %22
  %46 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %47 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %154

48:                                               ; preds = %36, %31
  br label %49

49:                                               ; preds = %48, %16
  %50 = load i64, i64* @g_args, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %90

52:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  %53 = load %struct.xgroup*, %struct.xgroup** @grps, align 8
  store %struct.xgroup* %53, %struct.xgroup** %3, align 8
  br label %54

54:                                               ; preds = %78, %52
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @ngrps, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %54
  %59 = load %struct.xgroup*, %struct.xgroup** %3, align 8
  %60 = getelementptr inbounds %struct.xgroup, %struct.xgroup* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* @g_args, align 8
  %63 = call i64 @member(i32 %61, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %58
  %66 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %67 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.xgroup*, %struct.xgroup** %3, align 8
  %70 = getelementptr inbounds %struct.xgroup, %struct.xgroup* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @member(i32 %68, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %76 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  br label %83

77:                                               ; preds = %65, %58
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %2, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %2, align 4
  %81 = load %struct.xgroup*, %struct.xgroup** %3, align 8
  %82 = getelementptr inbounds %struct.xgroup, %struct.xgroup* %81, i32 1
  store %struct.xgroup* %82, %struct.xgroup** %3, align 8
  br label %54

83:                                               ; preds = %74, %54
  %84 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %85 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %154

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %49
  %91 = load i64, i64* @l_args, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %95 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* @l_args, align 8
  %98 = call i64 @member(i32 %96, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %102 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  br label %154

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %90
  %105 = load i64, i64* @p_flag, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %109 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %117 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  br label %154

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118, %104
  %120 = load i64, i64* @s_flag, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %119
  %123 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %124 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %125, 1000
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %129 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 65534
  br i1 %131, label %132, label %135

132:                                              ; preds = %127, %122
  %133 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %134 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  br label %154

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %119
  %137 = load i64, i64* @u_flag, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %136
  %140 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %141 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp sge i32 %142, 1000
  br i1 %143, label %144, label %152

144:                                              ; preds = %139
  %145 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %146 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 65534
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %151 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  br label %154

152:                                              ; preds = %144, %139
  br label %153

153:                                              ; preds = %152, %136
  br label %154

154:                                              ; preds = %153, %149, %132, %115, %100, %88, %45, %13
  %155 = load i32, i32* %1, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %1, align 4
  %157 = load %struct.xpasswd*, %struct.xpasswd** %4, align 8
  %158 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %157, i32 1
  store %struct.xpasswd* %158, %struct.xpasswd** %4, align 8
  br label %6

159:                                              ; preds = %6
  ret void
}

declare dso_local i64 @member(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
