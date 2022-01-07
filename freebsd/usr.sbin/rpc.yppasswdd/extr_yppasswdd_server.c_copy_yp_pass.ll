; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.yppasswdd/extr_yppasswdd_server.c_copy_yp_pass.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.yppasswdd/extr_yppasswdd_server.c_copy_yp_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i32, i32 }

@copy_yp_pass.buf = internal global i8* null, align 8
@yp_password = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@_PWF_NAME = common dso_local global i32 0, align 4
@_PWF_PASSWD = common dso_local global i32 0, align 4
@_PWF_UID = common dso_local global i32 0, align 4
@_PWF_GID = common dso_local global i32 0, align 4
@_PWF_CLASS = common dso_local global i32 0, align 4
@_PWF_CHANGE = common dso_local global i32 0, align 4
@_PWF_EXPIRE = common dso_local global i32 0, align 4
@_PWF_GECOS = common dso_local global i32 0, align 4
@_PWF_DIR = common dso_local global i32 0, align 4
@_PWF_SHELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @copy_yp_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_yp_pass(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %8, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  %10 = load i8*, i8** @copy_yp_pass.buf, align 8
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, 10
  %13 = call i8* @realloc(i8* %10, i32 %12)
  store i8* %13, i8** @copy_yp_pass.buf, align 8
  %14 = load i8*, i8** @copy_yp_pass.buf, align 8
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 10
  %17 = call i32 @bzero(i8* %14, i32 %16)
  br label %18

18:                                               ; preds = %22, %3
  %19 = load i8*, i8** %8, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 58)
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i8*, i8** %8, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 58)
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 -1
  store i8 0, i8* %27, align 1
  br label %18

28:                                               ; preds = %18
  %29 = load i8*, i8** @copy_yp_pass.buf, align 8
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %28
  %31 = load i8*, i8** %7, align 8
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 10), align 4
  br label %33

33:                                               ; preds = %40, %30
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  %36 = load i8, i8* %34, align 1
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  store i8 %36, i8* %37, align 1
  %39 = icmp ne i8 %36, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %33

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* @_PWF_NAME, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  %45 = or i32 %44, %43
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  br label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %7, align 8
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 9), align 8
  br label %49

49:                                               ; preds = %56, %46
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %4, align 8
  %52 = load i8, i8* %50, align 1
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %7, align 8
  store i8 %52, i8* %53, align 1
  %55 = icmp ne i8 %52, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %49

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* @_PWF_PASSWD, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  %61 = or i32 %60, %59
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  %62 = load i8*, i8** %4, align 8
  %63 = call i8* @atoi(i8* %62)
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 8), align 8
  %64 = load i8*, i8** %4, align 8
  %65 = call i64 @strlen(i8* %64)
  %66 = add nsw i64 %65, 1
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %4, align 8
  %69 = load i32, i32* @_PWF_UID, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  %71 = or i32 %70, %69
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  %72 = load i8*, i8** %4, align 8
  %73 = call i8* @atoi(i8* %72)
  store i8* %73, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 7), align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i64 @strlen(i8* %74)
  %76 = add nsw i64 %75, 1
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  store i8* %78, i8** %4, align 8
  %79 = load i32, i32* @_PWF_GID, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  %81 = or i32 %80, %79
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %121

84:                                               ; preds = %58
  br label %85

85:                                               ; preds = %84
  %86 = load i8*, i8** %7, align 8
  %87 = ptrtoint i8* %86 to i32
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 6), align 8
  br label %88

88:                                               ; preds = %95, %85
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %4, align 8
  %91 = load i8, i8* %89, align 1
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %7, align 8
  store i8 %91, i8* %92, align 1
  %94 = icmp ne i8 %91, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %88

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* @_PWF_CLASS, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  %100 = or i32 %99, %98
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  %101 = load i8*, i8** %4, align 8
  %102 = call i8* @atol(i8* %101)
  store i8* %102, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 5), align 8
  %103 = load i8*, i8** %4, align 8
  %104 = call i64 @strlen(i8* %103)
  %105 = add nsw i64 %104, 1
  %106 = load i8*, i8** %4, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 %105
  store i8* %107, i8** %4, align 8
  %108 = load i32, i32* @_PWF_CHANGE, align 4
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  %110 = or i32 %109, %108
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  %111 = load i8*, i8** %4, align 8
  %112 = call i8* @atol(i8* %111)
  store i8* %112, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 4), align 8
  %113 = load i8*, i8** %4, align 8
  %114 = call i64 @strlen(i8* %113)
  %115 = add nsw i64 %114, 1
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 %115
  store i8* %117, i8** %4, align 8
  %118 = load i32, i32* @_PWF_EXPIRE, align 4
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  %120 = or i32 %119, %118
  store i32 %120, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  br label %121

121:                                              ; preds = %97, %58
  br label %122

122:                                              ; preds = %121
  %123 = load i8*, i8** %7, align 8
  %124 = ptrtoint i8* %123 to i32
  store i32 %124, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 3), align 4
  br label %125

125:                                              ; preds = %132, %122
  %126 = load i8*, i8** %4, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %4, align 8
  %128 = load i8, i8* %126, align 1
  %129 = load i8*, i8** %7, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %7, align 8
  store i8 %128, i8* %129, align 1
  %131 = icmp ne i8 %128, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %125

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* @_PWF_GECOS, align 4
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  %137 = or i32 %136, %135
  store i32 %137, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  br label %138

138:                                              ; preds = %134
  %139 = load i8*, i8** %7, align 8
  %140 = ptrtoint i8* %139 to i32
  store i32 %140, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 2), align 8
  br label %141

141:                                              ; preds = %148, %138
  %142 = load i8*, i8** %4, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %4, align 8
  %144 = load i8, i8* %142, align 1
  %145 = load i8*, i8** %7, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %7, align 8
  store i8 %144, i8* %145, align 1
  %147 = icmp ne i8 %144, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %141

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* @_PWF_DIR, align 4
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  %153 = or i32 %152, %151
  store i32 %153, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  br label %154

154:                                              ; preds = %150
  %155 = load i8*, i8** %7, align 8
  %156 = ptrtoint i8* %155 to i32
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 1), align 4
  br label %157

157:                                              ; preds = %164, %154
  %158 = load i8*, i8** %4, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %4, align 8
  %160 = load i8, i8* %158, align 1
  %161 = load i8*, i8** %7, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %7, align 8
  store i8 %160, i8* %161, align 1
  %163 = icmp ne i8 %160, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %157

165:                                              ; preds = %157
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* @_PWF_SHELL, align 4
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  %169 = or i32 %168, %167
  store i32 %169, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yp_password, i32 0, i32 0), align 8
  ret void
}

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @atol(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
